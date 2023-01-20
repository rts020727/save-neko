/* global $ */

// クリックされた時に、最上部へ800ミリ秒で移動
$(function(){
  $('#pagetop a').on('click', function(event){
    $('body, html').animate({
      scrollTop: 0
    }, 800);
    event.preventDefault();
  });
});