//= require stimulus.umd
(() => {
  console.log("init.js runs")
  if (!("stimulus" in window)) {
    window.stimulus = Stimulus.Application.start()
  }
})()