<?php

    include 'datalogin.php';

    $name=addslashes($_POST["name"]);
    $description=addslashes($_POST["description"]);

if (isset($_FILES["image"]["name"])) {
    $location = 'uploads/';
    $image_name = $_FILES["image"]["name"];
    $tmp_name = $_FILES['image']['tmp_name'];
    $error = $_FILES['image']['error'];
    $target_file = $location . $image_name;

    if (!empty($name)) {
        if (move_uploaded_file($tmp_name, $location.$image_name)){
            $sql = "INSERT INTO chief (name, description, image) VALUES ('$name', '$description', '$target_file');";
            if ($conn->query($sql) === TRUE) {
                echo "New record created successfully";
            } 
            else {
            }
        }

    } else {
        echo 'please choose a file';
    }
}

   $conn->close();
?>