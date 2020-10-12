(function ($) {
  "use strict";

  $('.popup-youtube, .popup-vimeo').magnificPopup({
      // disableOn: 700,
      type: 'iframe',
      mainClass: 'mfp-fade',
      removalDelay: 160,
      preloader: false,
      fixedContentPos: false
  });

  var client_review = $('.client_review_content');
  if (client_review.length) {
    client_review.owlCarousel({
      items: 1,
      loop: true,
      dots: true,
      autoplay: true,
      autoplayHoverPause: true,
      autoplayTimeout:5000,
      nav: false,
      margin: 20
    });
  }
  // menu fixed js code
  $(window).scroll(function () {
    var window_top = $(window).scrollTop() + 1;
    if (window_top > 50) {
      $('.main_menu').addClass('menu_fixed animated fadeInDown');
    } else {
      $('.main_menu').removeClass('menu_fixed animated fadeInDown');
    }
  });

  if (document.getElementById('default-select')) {
		$('select').niceSelect();
	}


  if ($('.single_gallery_part').length > 0) {
		$('.single_gallery_part').magnificPopup({
			type: 'image',
			gallery: {
				enabled: true
			}
		});
  }
  
  //counter up
$('.count').counterUp({});

}(jQuery));