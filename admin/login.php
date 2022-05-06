<?php
session_start();
ob_start();
if (isset($_SESSION['admin'])) {
  header("Refresh:0;Url=dashboard"); }
?>
<!DOCTYPE html>
<html lang="tr-TR">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <link rel="shortcut icon" type="image/png" href="favicon.ico"/>
    <link async rel="stylesheet" type="text/css" href="../sources/css/bootstrap.min.css">
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
    <title>Giriş Yap</title>
</head>

<body><center>
<br>

<?php
if (isset($_POST["giris"])) {
require 'connect.php';
$kullaniciadi = $_POST["kullaniciadi"];
$sifre = $_POST["sifre"];
$md5 = md5($sifre);

$kontrol = $db -> prepare("SELECT * FROM admin WHERE kullanici_adi=?");
$kontrol -> execute(array($kullaniciadi));
$k = $kontrol -> rowCount();

// Google reCaptcha //
function reCaptcha($response) {
  $fields = [
    'secret' => '6Lf1I28fAAAAACrhevtBjc-nYx5SPWfOq16KsLPC',
    'response' => $response ];
  $ch = curl_init('https://www.google.com/recaptcha/api/siteverify');
  curl_setopt_array($ch, [
    CURLOPT_POST => true,
    CURLOPT_POSTFIELDS => http_build_query($fields),
    CURLOPT_RETURNTRANSFER => true ]);
  $result = curl_exec($ch);
  curl_close($ch);
  return json_decode($result,true); }
// Google reCaptcha

if (!$k) {
  echo '<div class="alert alert-warning" style="width:350px;" role="alert">Kullanıcı adı veya şifre yanlış.</div>'; }

if (!isset($_POST['g-recaptcha-response']) || empty($_POST['g-recaptcha-response'])){
  echo '<div class="alert alert-danger" style="width:350px;" role="alert">Güvenlik doğrulaması yapılmadı. Tekrar deneyin.</div>'; }

else {
  $result = reCaptcha($_POST['g-recaptcha-response']);
foreach($db -> query("SELECT * FROM admin WHERE kullanici_adi='$kullaniciadi'") as $database) {
    $c_pw = $database["sifre"];
    $usersession = $database["kullanici_adi"];

if ($result['success'] == 1 && $md5 == $c_pw) {
  echo '<div class="alert alert-success" style="width:350px;" role="alert">Başarıyla giriş yaptınız.</div>';
  $_SESSION['admin'] = $usersession;
  header("Refresh: 2; Url=dashboard"); } 

else {
  echo '<div class="alert alert-danger" style="width:350px;" role="alert">API anahtarlarında veya veritabanında sorun var. Giriş işlemi başarısız.</div>';
} } } }
?>


<form method="post">
<div style="width:350px; height:400px; border:2px solid black; border-radius:5px; padding:20px">
<p class="h3" style="padding-bottom:10px;">Giriş Yap</p>

<div class="form-floating mb-3">
  <input type="text" name="kullaniciadi" required="" class="form-control" id="floatingInput" placeholder="Username">
  <label for="floatingInput">Kullanıcı Adı</label>
</div>

<div class="form-floating">
  <input type="password" name="sifre" required="" class="form-control" id="floatingPassword" placeholder="Password">
  <label for="floatingPassword">Şifre</label>
</div><br>

<div class="g-recaptcha" data-sitekey="6Lf1I28fAAAAAErjtXO6BtM1KQ-uiuATFmLnXxVe"></div><br>

<button type="submit" name="giris" class="btn btn-primary" style="width:300px;">Giriş Yap</button>
</div></form>

</center></body></html>
