//contact: details hide
$(document).ready(function() {
  $('.details').hide();
  $('.main h3').click(function() {
    $(this).toggleClass('open');
    $(this).next('.details').slideToggle(400);
  });//end click
});//end ready
$(document).ready(function() {
  $('.info').hide();
  $('p.head').click(function() {
    $(this).next('.info').slideToggle(400);
  });//end click
});//end ready