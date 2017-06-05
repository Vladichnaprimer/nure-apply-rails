
$(document).ready(function(){
	$('.wysihtml5').each(function(i, elem) {
		$(elem).wysihtml5();
	});
});

// $(document).on('page:load', function(){
// 	window['rangy'].initialized = false
// });

$(function(){
    $('.view-source .hide2').hide();
    $a = $('.view-source a');
    $a.on('click', function(event) {
      event.preventDefault();
      $a.not(this).next().slideUp(500);
      $(this).next().slideToggle(500);
    });
});
