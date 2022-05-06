$(function(){
$("#sonuc").hide();
$("input[name=ara]").keyup(function(){
var value  = $(this).val(); 
var konu   = "value="+value;
$.ajax({
	type: "post",
    url:   "search.php",
    data: konu, 
	beforeSend: function(){
$("#sonuc").fadeIn().html('<img src="http://i.hizliresim.com/Eg605Z.gif" width="20" height="20" />'); },
    success: function(sonuc){
$("#sonuc").show().html(sonuc); 
}});});});
  
  