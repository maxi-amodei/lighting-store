import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("✅ Cart controller connected")
  }

  flash() {
    alert("Clicked!")
  }
} 