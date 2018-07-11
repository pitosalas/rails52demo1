import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["showModal"]
  initialize() {
    console.log("Stim Content Controller loaded")
  }
  translation() {
    this.showModalTarget.setAttribute("class", "is-active")
  }
}