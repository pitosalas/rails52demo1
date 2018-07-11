import { Controller } from "stimulus"

export default class extends Controller {
  initialize() {
    console.log("Stim Content Controller loaded")
  }
  newTranslation() {
    console.log("clicked!")
  }
}