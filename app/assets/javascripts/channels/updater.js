App.updater = App.cable.subscriptions.create("UpdaterChannel", {
  connected: function() {
    // Called when the subscription is ready for use on the server
    console.log("Cable Connected")
  },

  disconnected: function() {
    // Called when the subscription has been terminated by the server
    console.log("Cable Disconnected")
  },

  received: function(data) {
    // Called when there's incoming data on the websocket for this channel
    console.log("Cable Received", data)
    element = document.querySelector(`td.translation-text#t${data.id}`)
    if (element == null) {
      console.error("null element returned from querySelector")
    }
    else {
      element.innerText = data.translation
    }
  }
});
