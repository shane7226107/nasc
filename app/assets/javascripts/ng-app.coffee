app = angular.module('ngApp', [])

#======= This code sets the request's header. ========#
app.config ["$httpProvider", ($httpProvider) ->

  # Perventing blocked form rails' CSRF protection. (except GET)
  csrfToken = $('meta[name=csrf-token]').attr('content')
  $httpProvider.defaults.headers.post['X-CSRF-Token'] = csrfToken
  $httpProvider.defaults.headers.put['X-CSRF-Token'] = csrfToken
  $httpProvider.defaults.headers.patch['X-CSRF-Token'] = csrfToken
  ( $httpProvider.defaults.headers.delete||={})['X-CSRF-Token'] = csrfToken # Can't work
  # $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
  
  # Setting the X-Requested-With field to 'XMLHttpRequest', 
  # so that we can recognize it and giving appropriate response.
  $httpProvider.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest'
]
#======= done ========================================#

if $("#ng-index-container")
  app.controller 'indexCtrl', ($scope, $http)->
    $scope.value = "indexCtrl"
    console.log "indexCtrl"

# if $("#ng-index-container")
#   app.controller 'myPlanCtrl', ($scope, $http)->
#     $scope.value = ""
#     $scope.buySwitch = false

#     $scope.turnOn = () ->
#       $scope.buySwitch = true
#       return

#   private_row = $("#private_row")
#   public_row = $("#public_row")
#   private_row.tooltip position:
#     my: "center bottom"
#     at: "center top-10"
#   public_row.tooltip position:
#     my: "center bottom"
#     at: "center top-10"

#   $("#expire_date").html(new Date($("#expire_date").data("expire-date-utc")))

# if $("#ng-need-tutors-container")
#   app.controller 'needTutorCtrl', ($scope, $http)->
#     $scope.currency_array = [
#                              {"value": "USD", "text": "美元(USD)" },
#                              {"value": "NTD", "text": "新台幣(NTD)" },
#                              {"value": "CNY", "text": "人民幣(RMB,CNY)" }
#                             ];
#     $scope.activateTagit = (talent)->
#       # 原本想用angular漂亮解,但應該是tagit本身設計的關係
#       # 必須要先移除原本tagit綁的input DOM後重新append才行,sad..
#       $("#edit-need-tutor-talents input").remove()      

#       input = $("<input></input>",{        
#         class: "form-control",
#         type: "text",
#         name: "need_tutor[talent]",
#         value: talent
#       }).appendTo("#edit-need-tutor-talents")

#       input.tagit({
#         autocomplete:
#           source: "/api/talent"
#           delay: 300
#         tagLimit: 1
#       });
#       return