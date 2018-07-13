import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["showAddModal", "showModal", "editBtn", "modalForm"]
  initialize() {
    console.log("Stim Content Controller loaded")
  }
  addContent() {
    this.showAddModalTarget.classList.add("is-active")
  }
  edit() {
    console.log(this.editBtnTarget)
    console.log(this.editBtnTarget.id)
    console.log(document.querySelectorAll(".form.content-form"))
    // console.log(this.modalFormTarget)
    // this.modalFormTarget.action = this.editBtnTarget.id
    this.showModalTarget.classList.add("is-active")
    document.querySelectorAll(".form.content-form").action = this.editBtnTarget.id

  }
}