$(document).ready(function() {
  $('.details').hide();
  $('.main h3').click(function() {
    $(this).toggleClass('open');
    $(this).next('.details').slideToggle(400);
  });
});
$(document).ready(function() {
  $(".subinf p").hide();
  $('.subinf li').click(function() {
    $(this).toggleClass('open');
    $(this).next('.subinf p').slideToggle(400);
  });
});
