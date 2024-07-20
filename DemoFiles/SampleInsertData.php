<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insert Message</title>
</head>
<body>
    <h1>Submit a Message</h1>
    <form action="" method="post">
        <label for="content">Message:</label><br>
        <textarea id="content" name="content" rows="4" required></textarea><br><br>
        <input type="submit" value="Submit">
    </form>

    <?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "simple_db";

        // Create connection
        $conn = new mysqli($servername, $username, $password, $dbname);

        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        // Sanitize and prepare data
        $content = $conn->real_escape_string($_POST['content']);

        // Insert data
        $sql = "INSERT INTO messages (content) VALUES ('$content')";

        if ($conn->query($sql) === TRUE) {
            echo "Message submitted successfully!";
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }

        $conn->close();
    }
    ?>
</body>
</html>