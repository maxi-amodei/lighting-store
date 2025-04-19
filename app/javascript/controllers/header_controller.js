// app/javascript/controllers/header_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["menu", "search"]

  connect() {
    console.log("Header controller connected")
  }

  toggleMenu() {
    this.menuTarget.classList.toggle("hidden")
  }

  toggleSearch() {
    this.searchTarget.classList.toggle("hidden")
  }
}
