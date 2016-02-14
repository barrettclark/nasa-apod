// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(function () {
    // cache the sliding object in a var
    var slideout = $('#summary');
    // click-me not clickme
    $("#clickToOpen").toggle(function () {
        // use cached object instead of searching
        slideout.animate({
            right: '0px'
        }, {
            queue: false,
            duration: 500
        });
    }, function () {
        // use cached object instead of searching        
        slideout.animate({
            right: '-300px'
        }, {
            queue: false,
            duration: 500
        });
    });
});