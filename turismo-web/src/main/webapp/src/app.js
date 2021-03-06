(function (ng) {
    var app = angular.module('mainApp', [
        // External dependencies
        'ui.router',
        'rzModule',
        'ui.bootstrap',
        // Internal modules dependencies  
        'miPlanModule',
        'pagoModule',
        'planModule',
        'preferenciaModule',
        'moduloTarjetas',
        'guiaModule',
        'blogsModule',
        'moduloFacturas',
        'moduloUbicacion',
        'paqueteModule',
        'comentariosModule',
        'usuariosModule',
        'valoracionesModule',
        'uiGmapgoogle-maps',
        'loginModule',
        'ngtweet'
    ]);

    // Resuelve problemas de las promesas
    app.controller("planTemp",function($scope, $state, $rootScope)
    {
        $scope.buscar = function(miPl)
        {
            $rootScope.anonimo = true;
            $state.current.data.requireLogin = -1; 
            sessionStorage.setItem("userName","anonimo");
            sessionStorage.setItem("name","anonimo");
            sessionStorage.setItem("rol",-1);
        $rootScope.miPl = miPl;
        
        $state.go('plansList', {reload: true});
        
       };
    });
    app.config(['$qProvider', function ($qProvider) {
            $qProvider.errorOnUnhandledRejections(false);
        }]);
      app.run(['$rootScope', '$transitions', function ($rootScope, $transitions) {
              

            $transitions.onSuccess({to: '*'}, function (trans) {
               
                var $state = trans.router.stateService;
                var requireLogin = $state.current.data.requireLogin;
                var roles = $state.current.data.roles;
               

                /**
                 * @ngdoc function
                 * @name isAuthenticated
                 * @methodOf mainApp.module:mainApp
                 * @description Esta función define si el usuario se encuentra
                 * dentro de su cuenta.
                 * @returns {Boolean} Verdadero si está dentro de su cuenta.
                 */
                $rootScope.isAuthenticated = function () {

 
                    if (sessionStorage.getItem("username") != null) {
                        $rootScope.currentUser = sessionStorage.getItem("username");
                        $rootScope.currentId = sessionStorage.getItem("id");
                        
                        return true;
                    } else {
                       
                        return false;
                    }
                };
           
                /*
                 * @ngdoc function
                 * @name hasPermissions
                 * @methodOf mainApp.module:mainApp
                 * @description Esta función define si el usuario tiene permisos
                 * para acceder a la aplicación.
                 * @returns {Boolean} Verdadero si el usuario tiene permisos.
                 */
                $rootScope.hasPermissions = function () {
                    console.log(roles);
                    if (($rootScope.isAuthenticated) && (roles.indexOf(sessionStorage.getItem("rol")) > -1)) {
                        return true;
                    } else {
                        return false;
                    }
                };


                if (requireLogin && (sessionStorage.getItem("username") === null)) {
                    event.preventDefault();
                    $state.go('login', $state.params);
                }

            });

        }]);
    
})(window.angular);
