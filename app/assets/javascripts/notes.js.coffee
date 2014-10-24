# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  availableTags = [
    "ActionScript"
    "AppleScript"
    "Asp"
    "BASIC"
    "C"
    "C++"
    "Clojure"
    "COBOL"
    "ColdFusion"
    "Erlang"
    "Fortran"
    "Groovy"
    "Haskell"
    "Java"
    "JavaScript"
    "Lisp"
    "Perl"
    "PHP"
    "Python"
    "Ruby"
    "Scala"
    "Scheme"
  ]
  $("#topic").upvote()
  $(".tags").autocomplete source: availableTags
