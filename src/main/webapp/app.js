var myApp = angular.module('billApp', []);

myApp.controller('GetBill', ['$scope', '$http', function($scope , $http) {
$http.get('http://safe-plains-5453.herokuapp.com/bill.json').
    success(function(data) {
        $scope.bill = data;
        console.log($scope.bill);
    });
}]);