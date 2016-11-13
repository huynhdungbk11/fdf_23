document.addEventListener('turbolinks:load', function() {
  jQuery('.owl-carousel').owlCarousel({
    loop: true,
    margin: 10,
    nav: true,
    responsive: {
      0: {
        items: 1
      },
      600: {
        items: 3
      },
      1000: {
        items: 5
      }
    }
  });
  $(window).scroll(function(){
    if ($(this).scrollTop() > 400) {
      $('.navigation1').fadeIn();
    }
    else {
      $('.navigation1').fadeOut();
    }
  });
});

$(document).on('change', '.radio', function() {
  $(this).closest('form').submit();
});
