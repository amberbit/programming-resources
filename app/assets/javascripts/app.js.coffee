module = angular.module("programming-resources", ['ui.bootstrap'])

module.controller("AutocompleteController", ['$scope', ($scope) ->
  $scope.fieldValue = null
  $scope.subjects = window.gon.subjects

  $scope.submit = ->
    window.location = "/subjects/#{$scope.fieldValue.slug}/links"
])

module.controller "PillsCtrl", ($scope)->
  if window.location.search is "?order=newest"
    $scope.newest = "active"
  else
    $scope.popular = "active"
