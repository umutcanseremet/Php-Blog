<?php
session_start();
ob_start();
error_reporting(0);
$url = $_SERVER["SERVER_NAME"];
$admin = $_SESSION["admin"];
if (!isset($_SESSION['admin'])) {
  header("Location:login"); }
?>
<!DOCTYPE html>
<html lang="tr-TR">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="shortcut icon" type="image/png" href="favicon.ico"/>
  
  <link href="../sources/css/bootstrap.min.css" rel="stylesheet">
  <script src="../sources/js/bootstrap.min.js"></script>
  
</head>
<title>Anasayfa</title>
<body>
    
<?php
require 'header.php';
?>
<center>
<div class="content"><br>
 

<div style="width:350px;height:330px;border:2px solid black;border-radius:5px;padding:20px">
<p class="h3" style="padding-bottom:10px;">Melih</p>
<img src="admin.jpg.jpeg" style="height:100px;width:100px;border-radius:50px;">
<br><br>
<div class="form-floating mb-3">
  <input type="text" class="form-control" readonly="" name="kullanici" id="floatingInput" value="<?php echo($admin); ?>" placeholder="text">
  <label for="floatingInput">Kullanıcı Adı</label>
</div>

<a href="logout" class="btn btn-dark" style="width:300px;">Çıkış Yap</a></p>



</div>

</center>
</body>
</html>
