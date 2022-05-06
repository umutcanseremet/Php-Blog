<?php
$id=$_GET['konu_id'];
session_start();
require 'connect.php';
$back = $_SERVER['HTTP_REFERER'];
if($id AND isset($_SESSION['admin'])){
$db->query("delete from yazilar where konu_id = $id")->fetch();
header("Location:$back");
}else{
    header("Location:$back");
}
?>