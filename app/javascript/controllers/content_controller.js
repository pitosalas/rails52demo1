import { Controller } from "stimulus"

export default class extends Controller {
  static targets = []
  initialize() {
    console.log("Stim Content Controller loaded")
  }
}