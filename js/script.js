$(document).ready(function () {
    $(window).scroll(function(){
        var topheader = $(".parallax-header").offset().top;
		if($(window).scrollTop() > topheader){
			$("#back-to-top").fadeIn(200);
		} else{
			$("#back-to-top").fadeOut(200);
		}
	});
	$('#back-to-top, .back-to-top').click(function() {
		  $('html, body').animate({ scrollTop:0 }, '800');
		  return false;
	});
    $(".navToggle").click (function(){
        $("nav .list").toggleClass("open");
        $(".navToggle").toggleClass("open")
    });
});
