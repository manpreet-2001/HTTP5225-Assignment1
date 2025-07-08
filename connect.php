<?php
// Connecting to the database
$connect = mysqli_connect('sql308.infinityfree.com', 'if0_38447610', 'Ns8569922', 'if0_38447610_db_monuments');

// Error Handling
if (!$connect) {
    echo "Error code: " . mysqli_connect_errno();
    echo "Error name: " . mysqli_connect_error();
    exit;
}
?>