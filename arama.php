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

                <h1 class="text-center">Melih Blog</h1>
            </div>
            <nav class="tm-nav" id="tm-nav">            
                <ul>
                    <li class="tm-nav-item active"><a href="index.php" class="tm-nav-link">
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

<?php
include "baglan.php";
$deger = $_GET["deger"];
if(!$deger){
header("Refresh:0;Url=index.php");
} else {
$row = $db->prepare("select * from yazilar where konu_baslik like ?");
$row->execute(array("%".$deger."%"));
$veri = $row->fetchAll(PDO::FETCH_ASSOC);  
if($veri){
foreach($veri as $x){
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
                        <span class="tm-color-primary">Travel . Events</span>
                        <span class="tm-color-primary"><?=$x['konu_tarih']?></span>
                    </div>
                    <hr>
                    <div class="d-flex justify-content-between">
                        <span><?=$x['konu_gonderen']?></span>
                    </div>
                </article>
<?php } } } ?>
            </div>
                     
            <footer class="row tm-row">
                <hr class="col-12">
                <div class="col-md-6 col-12 tm-color-gray">
                     Arama Sonucu Bulunamadı
                </div>

            </footer>
        </main>
    </div>
    <script src="js/jquery.min.js"></script>
    <script src="js/templatemo-script.js"></script>
</body>
</html>