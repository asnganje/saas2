import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="hide"
export default class extends Controller {
  static targets = ["profileCard"]
  toggleProfileCard() {
    this.profileCardTarget.classList.toggle("hidden")
  }
}
