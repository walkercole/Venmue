$(document).ready(function(){
  // Add smooth scrolling to all links
  $("a").on('click', function(event) {

    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {
      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 800, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
});
$(function(){
  
  var
      $outerSquare = $('.cube'),
    $menus     = $('a.item'),
    $innerSquare = $('.center'),
    $menuParent = $menus.parent(),
    $box       = $('.shape')
    ;
  
  $outerSquare
   .click('$flip', function() {
    $box.shape('flip up');
    })
;
$menus.detach();
  $menus
    .click( '$menus', function() {
        $(this)
         .addClass('active')
          .siblings('.item')
            .removeClass('active');
  
    })
;
$menuParent.append( $menus );
  
  $menus.on('click', function(attr) {
    var tabId = $(this).attr('data-tab');
    $box.shape(tabId);
  })
;
  
  $innerSquare
       .mouseover('$flip', function() {
    $box.shape('flip left');
    })
  ;
  
  
});
