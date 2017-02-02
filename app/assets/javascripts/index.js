menu = {};
menu.ready = function() {
  var
    $menuItem = $('.menu a.item, .menu .link.item'),
    handler = {
      activate: function() {
        $(this)
        .addClass('active')
        .closest('.ui.menu')
        .find('.item')
        .not($(this))
        .removeClass('active');
      }
    }
  ;
  $menuItem
    .on('click', handler.activate)
  ;
};
$(document).ready(menu.ready);