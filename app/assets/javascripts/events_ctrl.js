(function(){
  "use strict";

  angular.module("app").controller("eventsCtrl", function($scope,$http){
    $scope.setup = function() {

      $scope.search = "2016-08-25";

      $scope.sort = function(keyname){
          $scope.sortKey = keyname;   //set the sortKey to the param passed
          $scope.reverse = !$scope.reverse; //if true make it false and vice versa
      }

      $scope.storeDate = function(date){
        $scope.stored_search = date;
        console.log($scope.stored_search);
      };

      $scope.showAll = function() {
        $http.get("https://api.seatgeek.com/2/events?geoip=true&client_id=NDg3MjU1MnwxNDY1NDMxMDMz&per_page=100&datetime_local.gt=" + $scope.stored_search).then(function(response){
          $scope.events = response.data.events;
          console.log($scope.events);
        });
      };

      $scope.showSports = function() {
      $http.get("https://api.seatgeek.com/2/events?geoip=true&client_id=NDg3MjU1MnwxNDY1NDMxMDMz&taxonomies.name=sports&per_page=100&datetime_local.gt=" + $scope.stored_search).then(function(response){
        $scope.sports = response.data.events;
        console.log($scope.sports);
        });
      };

      $scope.showTheaters = function() {
      $http.get("https://api.seatgeek.com/2/events?geoip=true&client_id=NDg3MjU1MnwxNDY1NDMxMDMz&taxonomies.name=theater&per_page=100&datetime_local.gt=" + $scope.search).then(function(response){
        $scope.theaters = response.data.events;
        });
      };

      $scope.showConcerts = function() {
      $http.get("https://api.seatgeek.com/2/events?geoip=true&client_id=NDg3MjU1MnwxNDY1NDMxMDMz&taxonomies.name=concert&per_page=100&datetime_local.gt=" + $scope.search).then(function(response){
        $scope.concerts = response.data.events;
        });
      };

      $scope.showDinners = function() {
      $http.get("http://opentable.herokuapp.com/api/restaurants?city=chicago&per_page=100").then(function(response){
        $scope.dinners = response.data.restaurants;
        });
      };

  };
window.$scope = $scope;
  });


}());
