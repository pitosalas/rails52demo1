import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["showAddModal", "showModal"]
  initialize() {
    console.log("Stim Content Controller loaded")
  }
  addContent() {
    this.showAddModalTarget.classList.add("is-active")
  }
  editContent() {
    console.log("editContent")
    this.showModalTarget.classList.add("is-active")
  }
}