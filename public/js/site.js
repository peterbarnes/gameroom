$(document).ready(function() {
  $('.details').hide();
  $('.main h3').click(function() {
    $(this).toggleClass('open');
    $(this).next('.details').slideToggle(400);
  });
});
