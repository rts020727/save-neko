/* global $ */
$(function(){
  /*
   * slideshow
   */
  $('.slideshow').each(function(){
          // すべてのスライド
    var $slides = $(this).find('.slide-img'),
          slideCount = $slides.length,
          currentIndex = 0;

    $slides.eq(currentIndex).fadeIn();
    setInterval(showNextSlide, 5000);
    function showNextSlide(){
      var nextIndex = (currentIndex + 1) % slideCount;
      $slides.eq(currentIndex).fadeOut();
      $slides.eq(nextIndex).fadeIn();
      currentIndex = nextIndex;
    }
  });
});