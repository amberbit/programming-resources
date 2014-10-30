//= require jquery
//= require angular/angular
//= require angular-bootstrap/ui-bootstrap-tpls
//= require app

$(document).ready(function($) {
$(".add-form").hide();
  $( ".to-form" ).click(function() {
    $(".no-results").hide();
    $(".add-form").show();
  });
});
