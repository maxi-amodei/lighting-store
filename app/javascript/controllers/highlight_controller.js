import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["output"]

  connect() {
    console.log("✅ Stimulus connected to", this.element)
  }

  flash() {
    alert("Added to cart (test) ✅")
  }
}
