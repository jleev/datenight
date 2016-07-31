(function(){
  "use strict";

  angular.module("app").controller("cartedCtrl", function($scope,$http){
    $scope.setup = function(){
      $scope.cartedEvents = [];
      $scope.cartedDinners = [];
    };

    $scope.addCartedEvent = function(cartedEvent){
      $scope.cartedEvents.push(cartedEvent);
      //  alert("Saved!");
       window.console(cartedEvents);
    };

    // $scope.postEvent = function(cartedEvent){
    //   $http.post('/api/v1/carted_events.json', {info: cartedEvent}).then(function(response){
    //     $scope.please = response.data;
    //     console.log($scope.please);
    //    alert("Saved!");
    //    window.console(cartedEvents);
    //  });
    // };

    $scope.addCartedDinner = function(cartedDinner){
      $scope.cartedDinners.push(cartedDinner);
      //  alert("Saved!");
    };

    $scope.deleteCartedEvent = function(index){
      $scope.cartedEvents.splice(index,1);
    };

    $scope.deleteCartedDinner = function(index){
      $scope.cartedDinners.splice(index,1);
    };

  });
}());
