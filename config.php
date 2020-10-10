<?php
 
    $dsn = "mysql:dbname=banco99;host=localhost";
    $dbuser = "root";
    $dbpass = "";

    try {
        $pdo = new PDO($dsn, $dbuser, $dbpass);

    } catch(PDOException $e) {
        echo "Falhou:".$e->getMessage();
    }
 
?>

