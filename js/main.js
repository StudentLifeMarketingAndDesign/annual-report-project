var $container;

function triggerIsotope() {
  // don't proceed if $container has not been selected
  if ( !$container ) {
    return;
  }
  // init Isotope
  $container.isotope({
    itemSelector : '.item',
    layoutMode : 'vertical'
  });
}
// trigger Isotope on document ready
$(function(){
  var $container = $('#isotope-menu');
  triggerIsotope();
});
// trigger Isotope when fonts have loaded
Typekit.load({
  active: triggerIsotope,
  inactive: triggerIsotope
});




jQuery(document).ready(function($) {
    var $container = $('#isotope-menu');
    // filter items when filter link is clicked
    $('#filters a').click(function(){

        var selector = $(this).attr('data-filter');
        $container.isotope({ filter: selector });
        $('#filters a').removeClass('active');
        $(this).addClass('active');
        return false;
    });


    // var large_mode = 'only screen and (min-width: 900px)';
    // if (Modernizr.mq(large_mode)) {
    //     "use strict";
    //     $('.preview-list').perfectScrollbar({wheelSpeed:20});

    // }

});

jQuery(document).ready(function($) {

    //fitvids.js
    $(".article-body").fitVids();

    // Toggle for nav menu
    $('.menu-button').click(function(e) {

        e.preventDefault();
        showMenu();
        $(this).text($(this).text() == 'Close' ? 'Menu' : 'Close');
    });

    // Toggle for sidebar
    $('.sidebar-button').click(function(e) {
        e.preventDefault();
        showSidebar();
    });


    if ($(".preview-list").css("z-index") == "902" ){
        var height = $(window).height();
        $('.preview-list').css({'height': (height)+'px'});
    }

    $(window).resize(function() {
        if ($(".preview-list").css("z-index") == "902" ){
            var height = $(window).height();
            $('.preview-list').css({'height': (height)+'px'});
        }
    });

  $("#goto").change(function(){
    if ($(this).val()!='') {
      window.location.href=$(this).val();
    }
  });

});




