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
<title>Yorumlar</title>
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
      <th scope="col">Konu</th>
      <th scope="col">Yorum</th>
      <th scope="col">Tarih</th>
      <th scope="col">İşlemler</th>
    </tr>
  </thead>
  
<?php
$yorumlar = $db->prepare("SELECT * FROM yorumlar WHERE yorum_onay=?");
$yorumlar->execute(array("2"));
$yorum = $yorumlar->fetchAll(PDO::FETCH_ASSOC);
if ($yorum) {
foreach ($yorum as $x) { 
?>
<?php
$konu_id = $x["yorum_konu_id"]; 
$query = $db->query("SELECT * FROM yazilar WHERE konu_id = '{$konu_id}'")->fetch(PDO::FETCH_ASSOC);
if ($query){
?>
  <tbody>
    <tr>
      <th><?php echo $x["yorum_id"]; ?></th>
      <td><?php echo $x["yorum_gonderen"];?></td>
      <td><?php echo $query["konu_baslik"]; } ?></td>
      <td><?php echo $x["yorum_icerik"];?></td>
      <td><?php echo $x["yorum_tarih"];?></td>
      <td><a href="confirm.php?yorum_id=<?php echo $x["yorum_id"]; ?>"><button class="btn btn-success">Onayla</button></a></td>
    </tr>
  </tbody>
<?php } } 
else {
echo '<center><div class="alert alert-warning" style="width:350px;" role="alert">Onay bekleyen yorum bulunamadı.</div><br></center>'; }
?>
</table>
</div>
</div>

</body>
</html>