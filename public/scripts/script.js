$(document).ready(function() {
	$('#phone').mouseenter(function() {
		$('#msg').height('30px');
		$('#msg').css('font-size', '20px');
		$('#times').height('30px');
		$('#times').css('font-size', '20px');
	});
	$('#phone').mouseleave(function() {
		$('#msg').height('45px');
		$('#msg').css('font-size', '35px');
		$('#times').height('45px');
		$('#times').css('font-size', '35px');
	});

	$('#msg').mouseenter(function() {
		$('#phone').height('30px');
		$('#phone').css('font-size', '20px');
		$('#times').height('30px');
		$('#times').css('font-size', '20px');
	});
	$('#msg').mouseleave(function() {
		$('#phone').height('45px');
		$('#phone').css('font-size', '35px');
		$('#times').height('45px');
		$('#times').css('font-size', '35px');
	});

	$('#times').mouseenter(function() {
		$('#msg').height('30px');
		$('#msg').css('font-size', '20px');
		$('#phone').height('30px');
		$('#phone').css('font-size', '20px');
	});
	$('#times').mouseleave(function() {
		$('#msg').height('45px');
		$('#msg').css('font-size', '35px');
		$('#phone').height('45px');
		$('#phone').css('font-size', '35px');
	});
});