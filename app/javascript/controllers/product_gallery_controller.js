import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["thumbnail"]

  changeImage(event) {
    const mainImage = document.getElementById("main-image")
    const thumbnail = event.currentTarget

    mainImage.src = thumbnail.dataset.img
    mainImage.alt = thumbnail.dataset.alt

    // Update active state
    this.thumbnailTargets.forEach(t => t.classList.remove("border-gray-900"))
    thumbnail.classList.add("border-gray-900")
  }
} 