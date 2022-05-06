<?php
session_start();
ob_start();
require 'connect.php';
$url = $_SERVER["SERVER_NAME"];
if (!isset($_SESSION['admin'])) {
  header("Location:https://$url/admin/login"); }
?>
<!DOCTYPE html>
<html lang="tr-TR">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" href="style.css">
  <link rel="shortcut icon" type="image/png" href="favicon.ico"/>

  <link href="../sources/css/bootstrap.min.css" rel="stylesheet">
  <script src="../sources/js/bootstrap.min.js"></script>
  <script src="../sources/js/jquery-3.6.0.min.js"></script>

</head>
<title>Konular</title>
<body>

<?php
require 'header.php';
?>

<br>

<div class="container"> 
<div class="table-responsive"> 
<table class="table table-bordered">  
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Kullanıcı Adı</th>
      <th scope="col">Kategori</th>
      <th scope="col">Başlık</th>
      <th scope="col">İçerik</th>
      <th scope="col">Resim</th>
      <th scope="col">Tarih</th>
      <th scope="col">İşlemler</th>
    </tr>
  </thead>
<?php
$konular = $db->prepare("SELECT * FROM yazilar WHERE konu_onay=?");
$konular->execute(array("1"));
$konu = $konular->fetchAll(PDO::FETCH_ASSOC);
if ($konu) {
foreach ($konu as $x) { 
?>
<?php
$kategori_id = $x["konu_kategori_id"]; 
$query = $db->query("SELECT * FROM kategoriler WHERE kategori_id = '{$kategori_id}'")->fetch(PDO::FETCH_ASSOC);
if ($query){
?>
  <tbody>
    <tr>
      <th><?php echo $x["konu_id"]; ?></th>
      <td><?php echo $x["konu_gonderen"];?></td>
      <td><?php echo $query["kategori_adi"]; } ?></td>
      <td><?php echo $x["konu_baslik"];?></td>
      <td><?php echo $x["konu_icerik"];?></td>
      <td><img width="150px" height="75px;" src="../<?php echo $x["konu_resim"];?>"></td>
      <td><?php echo $x["konu_tarih"];?></td>
      <td><a href="confirm.php?konu_id=<?php echo $x["konu_id"]; ?>"><button class="btn btn-success">Onayla</button></a></td>
    </tr>
  </tbody>
<?php } } 
else {
echo '<center><div class="alert alert-warning" style="width:350px;" role="alert">Onay bekleyen konu bulunamadı.</div><br></center>'; }
?>
</table></div></div>


</body>
</html>