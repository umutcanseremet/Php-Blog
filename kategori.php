<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Xtra Blog</title>
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
                <div class="mb-3 mx-auto tm-site-logo"><i class="fas fa-times fa-2x"></i></div>            
                <h1 class="text-center">Xtra Blog</h1>
            </div>
            <nav class="tm-nav" id="tm-nav">            
                <ul>
                    <li class="tm-nav-item active"><a href="index.html" class="tm-nav-link">
                        <i class="fas fa-home"></i>
                        Blog Home
                    </a></li>
                    <li class="tm-nav-item"><a href="post.html" class="tm-nav-link">
                        <i class="fas fa-pen"></i>
                        Single Post
                    </a></li>
                    <li class="tm-nav-item"><a href="about.html" class="tm-nav-link">
                        <i class="fas fa-users"></i>
                        About Xtra
                    </a></li>
                    <li class="tm-nav-item"><a href="contact.html" class="tm-nav-link">
                        <i class="far fa-comments"></i>
                        Contact Us
                    </a></li>
                </ul>
            </nav>
            <div class="tm-mb-65">
                <a rel="nofollow" href="https://fb.com/templatemo" class="tm-social-link">
                    <i class="fab fa-facebook tm-social-icon"></i>
                </a>
                <a href="https://twitter.com" class="tm-social-link">
                    <i class="fab fa-twitter tm-social-icon"></i>
                </a>
                <a href="https://instagram.com" class="tm-social-link">
                    <i class="fab fa-instagram tm-social-icon"></i>
                </a>
                <a href="https://linkedin.com" class="tm-social-link">
                    <i class="fab fa-linkedin tm-social-icon"></i>
                </a>
            </div>
            <p class="tm-mb-80 pr-5 text-white">
                Xtra Blog is a multi-purpose HTML template from TemplateMo website. Left side is a sticky menu bar. Right side content will scroll up and down.
            </p>
        </div>
    </header>
    <div class="container-fluid">
        <main class="tm-main">
            <!-- Search form -->
            <div class="row tm-row">
                <div class="col-12">
                    <form method="GET" action="arama.php" class="form-inline tm-mb-80 tm-search-form">                
                        <input class="form-control tm-search-input" name="deger" type="text" placeholder="Search..." aria-label="Search">
                        <button class="tm-search-button" type="submit">
                            <i class="fas fa-search tm-search-icon" aria-hidden="true"></i>
                        </button>                                
                    </form>
                </div>                
            </div>            
            <div class="row tm-row">

<?php
include "baglan.php";
$id = $_GET["id"];
if (!$_GET['id']) {
header("Refresh:0;Url=index.php?hata=katyok"); }
$konu = $db->prepare("SELECT * from yazilar inner join kategoriler on kategoriler.kategori_id = yazilar.konu_kategori_id where konu_kategori_id=? ORDER BY konu_id DESC");
$konu->execute(array($id));
$kat =  $konu->fetchALL(PDO::FETCH_ASSOC);
foreach($kat as $x){
?>

                <article class="col-12 col-md-6 tm-post">
                    <hr class="tm-hr-primary">
                    <a href="detay.php?id=<?=$x['konu_id']?>" class="effect-lily tm-post-link tm-pt-60">
                        <div class="tm-post-link-inner">
                            <img src="<?=$x['konu_resim']?>" alt="Image" class="img-fluid">                            
                        </div>
                        <span class="position-absolute tm-new-badge">New</span>
                        <h2 class="tm-pt-30 tm-color-primary tm-post-title"><?=$x['konu_baslik']?></h2>
                    </a>                    
                    <p class="tm-pt-30">
                    <?php echo substr($x["konu_icerik"],0,170);?>...
                    </p>
                    <div class="d-flex justify-content-between tm-pt-45">
                        <span class="tm-color-primary"><?php
                                $kat = $db->query("SELECT * FROM kategoriler WHERE kategori_id = {$x['konu_kategori_id']}")->fetch();
                                echo $kat['kategori_adi'];
                                ?></span>
                        <span class="tm-color-primary"><?=$x['konu_tarih']?></span>
                    </div>
                    <hr>
                    <div class="d-flex justify-content-between">
                        <span><?=$x['konu_gonderen']?></span>
                    </div>
                </article>
<?php }  ?>
            </div>
                     
            <footer class="row tm-row">
                <hr class="col-12">
                <div class="col-md-6 col-12 tm-color-gray">
                    Design: <a rel="nofollow" target="_parent" href="https://templatemo.com" class="tm-external-link">TemplateMo</a>
                </div>
                <div class="col-md-6 col-12 tm-color-gray tm-copyright">
                    Copyright 2020 Xtra Blog Company Co. Ltd.
                </div>
            </footer>
        </main>
    </div>
    <script src="js/jquery.min.js"></script>
    <script src="js/templatemo-script.js"></script>
</body>
</html>