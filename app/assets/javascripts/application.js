//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require rails-ujs
//= require turbolinks
//= require_tree .
$(function() {
  $("#course_searching input").keyup(function() {
    $.get($("#course_searching").attr("action"), $("#course_searching").serialize(), null, "script");
    return false;
  });
});
