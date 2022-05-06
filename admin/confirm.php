<?php
session_start();
ob_start();
require "connect.php";
?>

<?php
if (isset($_SESSION['admin'])) {
    
if($_GET["konu_id"]) {
$konu_id = $_GET["konu_id"];
$update = $db->query("UPDATE yazilar SET konu_onay = 1 WHERE konu_id = $konu_id");

if ($update) { 
header("Location:contents"); }

else {
echo "Hata oluştu.";
header("Refresh:1; Url=contents"); } }

else {
header("Location:dashboard"); } }

else {
    header("Location:login"); } 
?>

<?php
if (isset($_SESSION['admin'])) {

if ($_GET["yorum_id"]) {
$yorum_id = $_GET["yorum_id"];
$update = $db->query("UPDATE yorumlar SET yorum_onay = 1 WHERE yorum_id = $yorum_id");

if ($update) { 
header("Location:comments"); }

else {
echo "Hata oluştu.";
header("Refresh:1; Url=comments"); } }

else {
header("Location:dashboard"); } }

else {
    header("Location:login"); } 
?>