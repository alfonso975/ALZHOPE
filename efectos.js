/*$(document).ready(function(){
 
  $('#primero').css('opacity', 0);
 
  $('#primero').waypoint(function() {
      $('#primero').addClass('fadeInLeft');
  }, { offset: '0%' });
 
});
*/
$(document).ready(function (){
   $(window).scroll(function(){
       var barra = $(window).scrollTop();
       var posicion = barra * 0.10;
       
       $('body').css({
          'background-position': '0 -' + posicion + 'px'
       });
   }); 
});
