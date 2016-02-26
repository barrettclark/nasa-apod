// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function() {
	$("div#clickToOpen").on("click", function() {
		$("div#summaryAndDate").toggle("slow");
	});
});    
