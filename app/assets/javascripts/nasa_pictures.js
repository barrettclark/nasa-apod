// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function() {
	$("div#clickToOpen").on("click", function() {
		$("div#summary").fadeOut(800, function () {
				$("div#showInfo").fadeIn(500);
			});
		});
$("div#showInfo").on("click", function() {
		$("div#showInfo").fadeOut(800, function () {
			$("div#summary").fadeIn(800);
		});
	});
}); 
