<?php
include_once 'dbConnection.php';
session_start();
$ref=@$_GET['q'];
$name = $_SESSION['name'];
$email = $_SESSION['email'];
$subject = "Feedback of the online quiz.";
$id=uniqid();
$date=date("d-m-Y");
$time=date("h:i:sa");
$feedback = $_POST['feedback'];
$q=mysqli_query($con,"INSERT INTO feedback VALUES  ('$id' , '$name', '$email' , '$subject', '$feedback' , '$date' , '$time')")or die ("Error");
header("location:$ref?q=Thank you for your valuable feedback");
?>