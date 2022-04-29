// $(document).ready(function(){
//   $('.favorite-btn').on('click',function(){
//     $('.favorite-btn').removeClass('favorite-btn-action');
//     $(this).addClass('favorite-btn-action');
//   });
//   $('.delete-comment-target').on('click',function(){
//     $(this).parent().parent().addClass('row-delete-comment-target');
//   });
// });


$(document).on('turbolinks:load', function () {
  $('.favorite-btn').on('click',function(){
    $('.favorite-btn').removeClass('favorite-btn-action');
    $(this).addClass('favorite-btn-action');
    // event.preventDefault();
  });
});

// $(document).on('turbolinks:load', function () {
//   alert("OK?")
//   $('.delete-comment-target').on('click',function(){
//     $(this).parent().parent().addClass('row-delete-comment-target');
//     // event.preventDefault();
//   });
// });


  $(function(){
    $('.delete-comment-target').on('click',function(){
    $(this).parent().parent().addClass('row-delete-comment-target');
    // event.preventDefault();
    });
  });