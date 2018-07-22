
(() => {
  stimulus.register("content", class extends Stimulus.Controller {
    static get targets() { return [] }
  
      initialize() {
        console.log("Stim Content Controller loaded")
      }
    })
})()