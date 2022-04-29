$(document).ready(function(){
  $('.favorite-btn').on('click',function(){
    $('.favorite-btn').removeClass('.favorite-btn-action')
    $(this).addClass('favorite-btn-action');
  })
});