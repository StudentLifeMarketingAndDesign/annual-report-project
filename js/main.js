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
// trigger Isotope AFTER when fonts have loaded, prevents isotope from triggering before fonts have loaded, fixes some layout issues.
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

  $(window).bind('statechangecomplete',function(){
    var nextLink = '';
    var currentID = $('#article-body').attr('data-id');
    var currentNavItem = $('#isotope-menu li[data-id="'+currentID+'"]');

    var nextNavItem = currentNavItem.nextAll(':visible').not(currentNavItem);

    var nextNavItemClone = nextNavItem.clone();
    var nextAnchor = nextNavItem.find('a');

    // var nextNavLinkURL = nextNavItem

    //console.log(nextAnchor);
    $(".article-body #article-nav").html(nextNavItem.html());

    $(document.body).ajaxify();
  });


});




