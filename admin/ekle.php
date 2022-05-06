<?php 
session_start();
require '../baglan.php';
$onaysiz = 2;
?>

<!DOCTYPE html>
<html lang="tr-TR">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" href="../sources/css/bootstrap.min.css">
  <link rel="shortcut icon" type="image/png" href="sources/images/favicon.ico"/>
  <script type="text/javascript" src="../sources/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/simplemde/latest/simplemde.min.css">
  <script src="https://cdn.jsdelivr.net/simplemde/latest/simplemde.min.js"></script>
  <title>Konu Ekle</title>
</head>
<body>

<?php
include 'header.php';
?>

<?php
if (isset($_POST["konuekle"]) & isset($_POST["select"])) {
  
if ($_FILES["resim"]["size"]<4096*4096){
    
if ($_FILES["resim"]["type"]=="image/png" || 
    $_FILES["resim"]["type"]=="image/jpg" || 
    $_FILES["resim"]["type"]=="image/jpeg"){

$select = $_POST["select"];
$kullanici = $_SESSION["admin"];
$back = $_SERVER["HTTP_REFERER"];
$ip = $_SERVER["REMOTE_ADDR"];
$baslik = $_POST["baslik"];
date_default_timezone_set('Europe/Istanbul');
$tarih = date('d/m/Y H:i:s');

require 'markdown/Parsedown.php';
$Parsedown = new Parsedown();
$icerik = $Parsedown->text($_POST["icerik"]);

//$uret=array("as","rt","ty","yu","fg");
//$uzanti=substr($dosya_adi,-4,4);
//$sayi_tut=rand(1,10000);
//$yeni_ad="../uploads/".$uret[rand(0,4)].$sayi_tut.$uzanti;
//$ad_db="uploads/".$uret[rand(0,4)].$sayi_tut.$uzanti;
    require 'class.upload.php';
    $handle = new \Verot\Upload\Upload($_FILES['resim']);
    $handle->allowed = array('image/*');
    if ($handle->uploaded) {
        $handle->process('../uploads');
    }

if($handle->processed && isset($icerik) && isset($baslik) & $select != 0){
    $ad_db = "uploads/".$handle->file_dst_name;
    $handle->clean();
$konuekle = $db->prepare("INSERT INTO yazilar SET konu_gonderen=?, konu_tarih=?,  konu_baslik=?, konu_icerik=?, konu_kategori_id=?, konu_resim=?");
$konuekle->execute(array("melih","$tarih","$baslik","$icerik","$select","$ad_db"));
$eklendi = $konuekle->rowCount(); 

if ($eklendi) {
  echo '<div class="alert alert-success" style="width:350px;" role="alert">Konu başarılı bir şekilde oluşturuldu.</div>';
  header("Refresh:2;Url=$back"); }

else {
echo '<div class="alert alert-danger" style="width:350px;" role="alert">Bir hata oluştu.(DB)</div>';
  header("Refresh:2;Url=$back"); } }

else{
    echo $handle->error;
echo '<div class="alert alert-danger" style="width:350px;" role="alert">Bir hata oluştu.(FU)</div>';
  header("Refresh:2;Url=$back"); } }

else{
  echo '<div class="alert alert-danger" style="width:350px;" role="alert">Yalnızca JPEG/JPG/PNG formatındaki resimler yüklenebilir. Yüklenen resim boyutu en fazla 4MB olabilir.</div>';
  header("Refresh:2;Url=$back"); } }

else{          
  echo '<div class="alert alert-danger" style="width:350px;" role="alert">Yalnızca JPEG/JPG/PNG formatındaki resimler yüklenebilir. Yüklenen resim boyutu en fazla 4MB olabilir.</div>';
  header("Refresh:2;Url=$back"); } } ?>

<form method="post" enctype="multipart/form-data">
  <div class="m-5 p-5">
  <p class="h3" style="padding-bottom:10px;">Konu Ekle</p>
<div class="form-floating mb-3">
  <input type="text" name="baslik" required="" minlength="5" class="form-control" id="floatingInput" placeholder="Başlık">
  <label for="floatingInput">Başlık</label>
</div>
<div class="input-group mb-3">
  <input type="file" name="resim" required="" class="form-control" id="inputGroupFile01">
</div>

<div style="padding-bottom:15px;">
<select name="select" required class="form-select" aria-label="Default select example">
  <option value"0">Kategori seçin.</option>
<?php
$konu = $db->prepare("SELECT * FROM kategoriler");
$konu->execute(array());
$x =  $konu->fetchALL(PDO::FETCH_ASSOC);
foreach($x as $m){
?>
  <option value='<?php echo $m["kategori_id"];?>' ><?php echo $m["kategori_adi"];?></option>
<?php } ?>
</select>
</div>

<textarea id="MyID" type="text" minlength="15" name="icerik"></textarea><br>

<script>
var simplemde = new SimpleMDE({ element: document.getElementById("MyID") });
</script>

<button type="submit" name="konuekle" class="btn btn-success">Ekle</button>
<br><br>
</div></form><br>


</body>
</html>