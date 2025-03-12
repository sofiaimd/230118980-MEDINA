<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    // Exercise No. 1

    $a = 15;
    $b = 7;

    echo "<h3><strong>Exercise 1: Variables and Operators</strong></h3>" . "<br>";

    echo "Sum: " . ($a + $b) . "<br>";
    echo "Difference: " . ($a - $b) . "<br>";
    echo "Product: " . ($a * $b) . "<br>";
    echo "Quotient: " . ($a / $b) . "<br>";

    // Exercise No. 2

    $number = 20;

    echo "<h3><strong>Exercise 2: Conditional Statements</strong></h3>" . "<br>";

    if ($number % 2 == 0) {
        echo "The number $number is even.<br>";
    } else {
        echo "The number $number is odd.<br>";
    }

    // Check if the number is positive, negative, or zero
    if ($number > 0) {
        echo "The number $number is positive.";
    } elseif ($number < 0) {
        echo "The number $number is negative.";
    } else {
        echo "The number is zero.";
    }

    // Exercise No. 3

    echo "<h3><strong>Exercise 3: Loops</strong></h3>" . "<br>";

    echo "<p><strong>Loop</strong></p>" . "<br>";

    for ($i = 1; $i <= 100; $i++) {
        if ($i % 3 == 0 && $i % 5 == 0) {
            echo "FizzBuzz ";
        } elseif ($i % 3 == 0) {
            echo "Fizz ";
        } elseif ($i % 5 == 0) {
            echo "Buzz ";
        } else {
            echo "$i ";
        }
    }

    echo "<p><strong>Fibonacci Sequence</strong></p>" . "<br>";

    $first = 0;
    $second = 1;

    // Generate the first 10 Fibonacci numbers
    for ($i = 1; $i <= 10; $i++) {
        $next = $first + $second;
    
    // Check if the number is even
    if ($next % 2 == 0) {
        echo "$next ";
    }
    
    // Move to the next Fibonacci number
    $first = $second;
    $second = $next;
}

    // Exercise No. 4

    echo "<h3><strong>Exercise 4: Functions</strong></h3>" . "<br>";
    
    echo "<p><strong>Greeting Message</strong></p>" . "<br>";

    $name = "Sofia";

    function greet($name) {
        return "Hello, $name! Welcome!";
    }

    echo greet($name);

    echo "<p><strong>Square of a Number</strong></p>" . "<br>";

    function square($number) {
        return $number * $number;
    }
    
    // Example usage
    echo "The square of 5 is: " . square(5);

    // Exercise No. 5

    echo "<h3><strong>Exercise 5: Form Handling</strong></h3>" . "<br>";

    echo "<p><strong>HTML Form</strong></p>" . "<br>";

    ?>

    <h3><strong>Exercise 5: Form Handling</strong></h3> 
    <h2>Enter Your Name</h2>
    <form action="process.php" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>
        <button type="submit">Submit</button>
    </form>

    <?php
    
    ?>


</body>
</html>