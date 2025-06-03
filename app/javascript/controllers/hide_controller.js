import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="hide"
export default class extends Controller {
  static targets = ["profileCard", "sideBar"]
  toggleProfileCard() {
    if (this.hasProfileCardTarget) {
      this.profileCardTarget.classList.toggle("hidden")
    }
  }

  toggleSideBar() {
    if(this.hasSideBarTarget) {
      this.sideBarTarget.classList.toggle("hidden")
    }
  }
}
