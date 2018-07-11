import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["area"]
  initialize() {
    console.log(this.areaTarget + "!!")
  }
  update() {
    console.log("Updating!")
  }
}