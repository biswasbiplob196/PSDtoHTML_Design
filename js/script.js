//Smooth Scroll
    $(document).ready(function(){
      $("a").on('click', function(event) {
        if (this.hash !== "") {
          event.preventDefault();
          var hash = this.hash;

          $('html, body').animate({
            scrollTop: $(hash).offset().top - 70
          }, 800);
          return false;
        }
      });
    });

    // On Scroll bg color Script
    $(document).ready(function(){
      $(window).scroll(function(){
        var scroll = $(window).scrollTop();
          if (scroll > 100) {
            $(".navbar").addClass("nav-bg");
          }

          else{
              $(".navbar").removeClass("nav-bg");  	
          }
      })
    })
	
	
	
////swiper slide
//
//  $(document).ready(function () {
//    //initialize swiper when document ready
//    var mySwiper = new Swiper ('.swiper-container', {
//      // Optional parameters
//      direction: 'vertical',
//      loop: true
//    })
//  });