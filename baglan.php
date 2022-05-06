<?php
$sunucu = "localhost";
$kullanici = "root";
$sifre = "";
$veritabani = "blogtest";

try {
    $db = new PDO("mysql:host=$sunucu;dbname=$veritabani;charset=utf8",$kullanici,$sifre);
	$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); 

$db->exec("SET NAMES utf8"); }
catch (PDOException $e) {
	echo "Bağlantı hatası: " . $e->getMessage(); }
?>