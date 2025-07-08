<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Public Art and Monuments</title>
    <!-- Adding Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
</head>
<body class="bg-secondary">
    <div class="container">
        <h1 class="my-4 text-white bg-info text-center p-3 rounded">Public Art and Monuments</h1>
        <div class="row">
            <?php
            // Including connection file to connect the database
            include 'connect.php';

            // JOIN query to get data from 2 different tables
            $query = '
                SELECT 
                    Artists.Artist_Name, 
                    Artists.Artwork_Name, 
                    Artists.Media, 
                    Artists.Year_of_Creation, 
                    Location.Address, 
                    Location.Ward, 
                    Location.Ward_Name, 
                    Location.Postal_Code
                FROM 
                    Artists 
                JOIN 
                    Location 
                ON 
                    Artists.Artist_Id = Location.Artist_Id
            ';
            // Storing the result of the query
            $results = mysqli_query($connect, $query);

            // Error handling
            if (!$results) {
                echo 'Error Message: ' . mysqli_error($connect);
                exit;
            }

            $index = 0;
            // Looping through the database
            foreach ($results as $artwork) {
                // Styling the page
                if($index % 2 == 0) {
                    $cardClass = 'text-white bg-info';
                }
                else {
                    $cardClass = 'border-info text-info';
                }
                // Displaying the data
                echo '<div class="col-md-4 mb-4 fs-5">
                    <div class="card ' . $cardClass . ' text-center" style="max-width: 28rem;">
                        <div class="card-body p-5">
                            <h5 class="card-title p-3 display-6">' . $artwork['Artwork_Name'] . '</h5>
                            <p class="card-text"><strong>Artist:</strong> ' . $artwork['Artist_Name'] . '</p>
                            <p class="card-text"><strong>Media:</strong> ' . $artwork['Media'] . '</p>
                            <p class="card-text"><strong>Year:</strong> ' . $artwork['Year_of_Creation'] . '</p>
                            <h3 class="card-title p-3"> Location </h3>
                            <p class="card-text"><strong>Address:</strong> ' . $artwork['Address'] . '</p>
                            <p class="card-text"><strong>Ward:</strong> ' . $artwork['Ward'] . '</p>
                            <p class="card-text"><strong>Ward Name:</strong> ' . $artwork['Ward_Name'] . '</p>
                            <p class="card-text"><strong>Postal Code:</strong> ' . $artwork['Postal_Code'] . '</p>
                        </div>
                    </div>
                </div>';
                $index++;
            }

            // Closing the connection
            mysqli_close($connect);
            ?>
        </div>
    </div>
</body>
</html>