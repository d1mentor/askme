//= require rails-ujs
//= require turbolinks
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require jquery.minicolors
//= require jquery.minicolors.simple_form

$(function(){
  $('#ask-button').click(function(){
    $('#ask-form').slideToggle(300);
    return false;
  });
});