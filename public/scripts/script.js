$(document).ready(function() {
	$('#phone').click(function() {
		$('#msg').height('30px');
		$('#msg').css('font-size', '20px');
		$('#times').height('30px');
		$('#times').css('font-size', '20px');

		$('#phone').css('border','solid 3px #FEDE58');
		$('#msg').css('border','solid 3px #666666');
		$('#times').css('border','solid 3px #666666');
	});
	$('#phone').mouseleave(function() {
		$('#msg').height('45px');
		$('#msg').css('font-size', '35px');
		$('#times').height('45px');
		$('#times').css('font-size', '35px');
	});

	$('#msg').click(function() {
		$('#phone').height('30px');
		$('#phone').css('font-size', '20px');
		$('#times').height('30px');
		$('#times').css('font-size', '20px');

		$('#phone').css('border','solid 3px #666666');
		$('#msg').css('border','solid 3px #FEDE58');
		$('#times').css('border','solid 3px #666666');
	});
	$('#msg').mouseleave(function() {
		$('#phone').height('45px');
		$('#phone').css('font-size', '35px');
		$('#times').height('45px');
		$('#times').css('font-size', '35px');
	});

	$('#times').click(function() {
		$('#msg').height('30px');
		$('#msg').css('font-size', '20px');
		$('#phone').height('30px');
		$('#phone').css('font-size', '20px');

		$('#phone').css('border','solid 3px #666666');
		$('#msg').css('border','solid 3px #666666');
		$('#times').css('border','solid 3px #FEDE58');
	});
	$('#times').mouseleave(function() {
		$('#msg').height('45px');
		$('#msg').css('font-size', '35px');
		$('#phone').height('45px');
		$('#phone').css('font-size', '35px');
	});

	$('#submit').click(function() {
		$('#phone').css('border','solid 3px #666666');
		$('#msg').css('border','solid 3px #666666');
		$('#times').css('border','solid 3px #666666');
	});
	$('#submit').mouseenter(function() {
		$('#phone').css('border','solid 3px #666666');
		$('#msg').css('border','solid 3px #666666');
		$('#times').css('border','solid 3px #666666');
	});
});