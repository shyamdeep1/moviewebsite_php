<?php
$apiKey = '665c91f4e5b4795209c0c5989fa6f46a';
$conn = new mysqli("sql311.infinityfree.com", "if0_38971909", "shyamjalu1", "if0_38971909_admin");

// Check DB connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$tmdbURL = "https://api.themoviedb.org/3/movie/popular?api_key=$apiKey&language=en-US&page=1";
$response = file_get_contents($tmdbURL);
$data = json_decode($response, true);

foreach ($data['results'] as $movie) {
    $movieId = $movie['id'];
    $title = $conn->real_escape_string($movie['title']);
    $overview = $conn->real_escape_string($movie['overview']);
    $year = substr($movie['release_date'], 0, 4);
    $poster_path = "https://image.tmdb.org/t/p/w500" . $movie['poster_path'];
    $imdb = $movie['vote_average'];

    // Skip if already exists
    $check = $conn->query("SELECT * FROM movies_data WHERE movie_name = '$title'");
    if ($check->num_rows > 0) continue;

    // Fetch extra info
    $details = json_decode(file_get_contents("https://api.themoviedb.org/3/movie/$movieId?api_key=$apiKey&language=en-US"), true);
    $credits = json_decode(file_get_contents("https://api.themoviedb.org/3/movie/$movieId/credits?api_key=$apiKey"), true);
    $images = json_decode(file_get_contents("https://api.themoviedb.org/3/movie/$movieId/images?api_key=$apiKey"), true);

    // Director
    $director = '';
    foreach ($credits['crew'] as $crew) {
        if ($crew['job'] === 'Director') {
            $director = $conn->real_escape_string($crew['name']);
            break;
        }
    }

    // Top 3 stars
    $stars = [];
    for ($i = 0; $i < min(3, count($credits['cast'])); $i++) {
        $stars[] = $credits['cast'][$i]['name'];
    }
    $stars_str = $conn->real_escape_string(implode(', ', $stars));

    // Genres
    $genres = [];
    foreach ($details['genres'] as $genre) {
        $genres[] = $genre['name'];
    }
    $genre_str = $conn->real_escape_string(implode(', ', $genres));

    // Language
    $lang = $details['original_language'] ?? 'en';

    // Screenshots
    $ss_images = array_fill(0, 6, '');
    if (isset($images['backdrops'])) {
        for ($i = 0; $i < min(6, count($images['backdrops'])); $i++) {
            $ss_images[$i] = "https://image.tmdb.org/t/p/w780" . $images['backdrops'][$i]['file_path'];
        }
    }

    // Insert movie
    $stmt = $conn->prepare("INSERT INTO movies_data (
        date_time, latest_released, english_movies, 480p_movies, 720p_movies, 1080p_movies,
        movie_name, movie_catagory, year, movie_description, movie_imdb, main_image,
        movie_director, movie_stars, movie_catagory, english_l,
        ss_images1, ss_images2, ss_images3, ss_images4, ss_images5, ss_images6
    ) VALUES (
        NOW(), 'yes', 'yes', 'yes', 'yes', 'yes',
        ?, 'Hollywood', ?, ?, ?, ?,
        ?, ?, ?, ?,
        ?, ?, ?, ?, ?, ?
    )");

    $stmt->bind_param(
        "ssssssssssssss",
        $title, $year, $overview, $imdb, $poster_path,
        $director, $stars_str, $genre_str, $lang,
        $ss_images[0], $ss_images[1], $ss_images[2],
        $ss_images[3], $ss_images[4], $ss_images[5]
    );

    $stmt->execute();
    $stmt->close();
}

echo "Movies fetched and inserted with full details.";
?>
