app.factory '$events', [ '$rootScope', ($rootScope)->
  client = new WebSocketRails("localhost:3000/websocket")
  client: client
  trigger: (eventName, data)->
    @client.trigger(eventName, data)
  bind: (eventName, callback)->
    @client.bind eventName, (data)->
      $rootScope.$apply ->
        callback(data)
]