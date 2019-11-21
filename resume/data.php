<?php
$pdo = new PDO('mysql:host=127.0.0.1;dbname=practice_db','root', '');
$sql = [
    "SELECT * FROM about",
    "SELECT * FROM education",
    "SELECT * FROM languages",
    "SELECT * FROM interests",
    "SELECT * FROM aboutcareer",
    "SELECT * FROM career",
    "SELECT * FROM aboutus",
    "SELECT * FROM projectus",
    "SELECT * FROM levels"
];
$aboutData = $pdo->query($sql[0]);
$aboutData = $aboutData->fetch();

$educationData = $pdo->query($sql[1]);

$langData= $pdo->query($sql[2]);

$interestsData = $pdo->query($sql[3]);

$aboutCareer = $pdo->query($sql[4]);
$aboutCareer = $aboutCareer->fetch();

$career = $pdo->query($sql[5]);

$about = $pdo->query($sql[6]);
$about = $about->fetch();

$projectsData = $pdo->query($sql[7]);

$level = $pdo->query($sql[8]);


