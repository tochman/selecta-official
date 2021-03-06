var selecta = angular.module('Selecta', ['ngResource','ui.router'])

.config([
'$stateProvider',
'$urlRouterProvider',
function($stateProvider, $urlRouterProvider) {

    $stateProvider

      .state('home',{
        url: '/',
        templateUrl: "home.html",
        controller: 'SongSearchController'
      })

      .state('empty', {
        url: '/results',
        templateUrl: "results.html",
        controller: 'SongSearchController'
      })

      .state('track', {
        url: '/track/:songId',
        templateUrl: "track.html",
        controller: 'TrackController'
      })

      .state('likeHistory', {
        url: '/likeHistory/:userId',
        templateUrl: "likeHistory.html",
        controller: 'LikeHistoryController'
      });

      $urlRouterProvider.otherwise('/');

  }]);
