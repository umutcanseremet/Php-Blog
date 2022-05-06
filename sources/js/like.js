$(function() {
$("a.like").click(function() {
var nesne = $(this);
var id = nesne.attr("id");
var veri = "id="+id+"&durum=1";
$.ajax({
	url: "like.php",
	data: veri,
	type: "post",
	dataType: "json",
	success: function(e) {
if(e.hata){
alert(e.hata); }

else {
alert(e.ok);
var c = $("#"+id+".begen").html();
var  sayi = parseInt(c)+1; 
$("#"+id+".begen").html(sayi); } } } ); } ); } )