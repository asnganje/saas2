import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="close"
export default class extends Controller {
  static targets = ["name"]
  connect() {
    if(this.hasNameTarget) {
      this.toggle()
    }
  }
  toggle() {
    setTimeout(()=> {
      this.nameTarget.classList.toggle("hidden")
    }, 2000)
  }
}
