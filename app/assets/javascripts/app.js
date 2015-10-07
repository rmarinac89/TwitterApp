
var app = angular.module('TwitterSearch', []);


app.controller('TweetController', ['$scope', '$http',
    
    function($scope, $http) {

   $scope.fetch = function(term) {

   	endpoint = "http://localhost:3000/tweets/" + term

	   	$http({
	        method: "GET",
	        url: endpoint
	    })
	    .success(function(data) {
	    	console.log(data);
	        $scope.tweetdata = data;

	    })
	    .error(function(data) {
	        console.log("Error Fetching" + term);
	    })
   }

   $scope.search = {
        text: 'Type Something',
      };

}]);






