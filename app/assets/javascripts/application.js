// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require script
//= require bootstrap-wysihtml5
//= require_tree .


$(document).ready(function(){
	$('.wysihtml5').each(function(i, elem) {
		$(elem).wysihtml5();
	});
});

$(document).on('page:load', function(){
	window['rangy'].initialized = false
});

$(function(){
    $('.view-source .hide2').hide();
    $a = $('.view-source a');
    $a.on('click', function(event) {
      event.preventDefault();
      $a.not(this).next().slideUp(500);
      $(this).next().slideToggle(500);
    });
});
