<?php

    $con = mysqli_connect('localhost', 'root', '', 'webproject');
    if(!$con){
        echo('You are not connected');
    }
?>