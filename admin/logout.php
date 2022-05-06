<?php session_start(); session_destroy(); header("Refresh: 1; Url=login"); ?>
<!DOCTYPE html>
<html lang="tr-TR">
<head>
<link rel="shortcut icon" type="image/png" href="favicon.ico"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css">
	<title>Çıkış Yaptınız</title>
</head>
<body><center><br>
<div class="alert alert-warning" style="width:350px;" role="alert">Çıkış yaptınız. Giriş sayfasına yönlendiriliyorsunuz.</div>
</html>