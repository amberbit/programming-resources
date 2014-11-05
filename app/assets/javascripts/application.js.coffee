//= require angular/angular
//= require jquery
//= require jquery_ujs
//= require bootstrap-sass-official/assets/javascripts/bootstrap-sprockets
//= require angular-bootstrap/ui-bootstrap-tpls
//= require app

$ ->
  $(".ask-to-sign-in").click  ->
    if gon.current_user == null
      $('#myModal').modal()
      return false

