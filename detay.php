<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Detay</title>
	<link rel="stylesheet" href="fontawesome/css/all.min.css"> <!-- https://fontawesome.com/ -->
	<link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet"> <!-- https://fonts.google.com/ -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/templatemo-xtra-blog.css" rel="stylesheet">

</head>
<body>
	<header class="tm-header" id="tm-header">
        <div class="tm-header-wrapper">
            <button class="navbar-toggler" type="button" aria-label="Toggle navigation">
                <i class="fas fa-bars"></i>
            </button>
            <div class="tm-site-header">

                <h1 class="text-center">Melih Blog</h1>
            </div>
            <nav class="tm-nav" id="tm-nav">            
                <ul>
                    <li class="tm-nav-item"><a href="index.php" class="tm-nav-link">
                        <i class="fas fa-home"></i>
                        Ana Sayfa
                    </a></li>
                </ul>
            </nav>

    </header>
    <div class="container-fluid">
        <main class="tm-main">

            <div class="row tm-row">
                <div class="col-12">
                    <form method="GET" action="arama.php" class="form-inline tm-mb-80 tm-search-form">                
                        <input class="form-control tm-search-input" name="deger" type="text" placeholder="Ara..." aria-label="Search">
                        <button class="tm-search-button" type="submit">
                            <i class="fas fa-search tm-search-icon" aria-hidden="true"></i>
                        </button>                                
                    </form>
                </div>                
            </div>            
            <div class="row tm-row">
                <div class="col-12">
                    <hr class="tm-hr-primary tm-mb-55">
<?php
include "baglan.php";
$id = $_GET["id"];
if (!$_GET['id']) {
header("Refresh:0;Url=/"); }
$veri = $db->query("SELECT * FROM yazilar WHERE konu_id = '{$id}'")->fetch(PDO::FETCH_ASSOC);
if (!$veri){
header("Refresh:0;Url=/"); }
$yeniler = $db->query("SELECT * FROM yazilar ORDER BY konu_id > '{$id}' LIMIT 3")->fetchAll();
?>
                    <!-- Video player 1422x800 -->
                    
                        <img src="<?=$veri['konu_resim']?>" width="100%" height="400">							  
                        
                </div>
            </div>
            <div class="row tm-row">
                <div class="col-lg-8 tm-post-col">
                    <div class="tm-post-full">

                        <div class="mb-4">
                            <h2 class="pt-2 tm-color-primary tm-post-title"><?=$veri['konu_baslik']?></h2>
                            <p class="tm-mb-40"><?=$veri['konu_tarih']?> - <?=$veri['konu_gonderen']?></p>
                            <p>
                            <?=$veri['konu_icerik']?>
                            </p>
                            <span class="d-block text-right tm-color-primary">
                                <?php
                                $kat = $db->query("SELECT * FROM kategoriler WHERE kategori_id = {$veri['konu_kategori_id']}")->fetch();
                                echo $kat['kategori_adi'];
                                ?>
                            </span>
                        </div>
                        
                        
                    </div>
                </div>
                <aside class="col-lg-4 tm-aside-col">
                    <div class="tm-post-sidebar">
                        <hr class="mb-3 tm-hr-primary">
                        <h2 class="mb-4 tm-post-title tm-color-primary">Kategoriler</h2>
                        <ul class="tm-mb-75 pl-5 tm-category-list">
                        <?php
$kat = $db->query("SELECT * FROM kategoriler ORDER BY kategori_id DESC")->fetchall();
foreach($kat as $x){
?>
                            <li><a href="kategori.php?id=<?=$x['kategori_id']?>" class="tm-color-primary"><?=$x['kategori_adi']?></a></li>
                            <?php } ?>                            
                        </ul>
                        <hr class="mb-3 tm-hr-primary">
                        <h2 class="tm-mb-40 tm-post-title tm-color-primary">Son Gönderiler</h2>
<?php foreach($yeniler as $x){ ?>
                        <a href="detay.php?id=<?=$x["konu_id"]?>" class="d-block tm-mb-40">
                            <figure>
                                <img src="<?=$x["konu_resim"]?>" alt="Image" class="mb-3 img-fluid">
                                <figcaption class="tm-color-primary"><?=$x["konu_baslik"]?></figcaption>
                            </figure>
                        </a>
<?php } ?>
                    </div>                    
                </aside>
            </div>


        </main>
    </div>
    <script src="js/jquery.min.js"></script>
    <script src="js/templatemo-script.js"></script>
</body>
</html>