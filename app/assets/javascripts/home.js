// creates application injects ng-resource and templates
var app = angular
  
  .module('girlfriend', [
    'ngResource', 
    'templates'
    ])

  .factory( 'girlfriendFactory', function($resource){
    return $resource("/girlfriends/:id", { id: '@id' }); 
  })

  .controller('GirlfriendController', [
    '$scope', 
    'girlfriendFactory',
    function($scope, girlfriendFactory) {

      $scope.girlfriends = girlfriendFactory.query();

      $scope.addGirlfriend = function(girlfriend){
        girlfriendFactory.save(girlfriend); 
      };

      $scope.deleteGirlfriend = function(girlfriend) {
        girlfriendFactory.delete({id: girlfriend}) 
      };  
    }
  ])