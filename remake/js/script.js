$(document).ready(function () {
    $("body").queryLoader2({
        barColor: "#111111",
        backgroundColor: "#fff",
        percentage: true,
        barHeight: 6,
        completeAnimation: "fade",
        minimumTime: 300
    });
    $(window).scroll(function(){
		if($(window).scrollTop() > 874){
			$("#back-to-top").fadeIn(200);
		} else{
			$("#back-to-top").fadeOut(200);
		}
	});

	$('#back-to-top, .back-to-top').click(function() {
		  $('html, body').animate({ scrollTop:0 }, '800');
		  return false;
	});
});
