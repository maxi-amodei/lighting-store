import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["quantity"]

  selectColor(event) {
    const button = event.currentTarget
    const color = button.dataset.color

    // Update active state
    document.querySelectorAll('[data-action*="selectColor"]').forEach(btn => {
      btn.classList.remove("border-gray-900")
      btn.classList.add("border-gray-300")
      btn.setAttribute("aria-pressed", "false")
    })

    button.classList.remove("border-gray-300")
    button.classList.add("border-gray-900")
    button.setAttribute("aria-pressed", "true")
  }

  selectSize(event) {
    const button = event.currentTarget
    const size = button.dataset.size

    // Update active state
    document.querySelectorAll('[data-action*="selectSize"]').forEach(btn => {
      btn.classList.remove("border-gray-900")
      btn.classList.add("border-gray-300")
      btn.setAttribute("aria-pressed", "false")
    })

    button.classList.remove("border-gray-300")
    button.classList.add("border-gray-900")
    button.setAttribute("aria-pressed", "true")
  }

  increaseQuantity() {
    const input = this.quantityTarget
    const currentValue = parseInt(input.value)
    input.value = currentValue + 1
  }

  decreaseQuantity() {
    const input = this.quantityTarget
    const currentValue = parseInt(input.value)
    if (currentValue > 1) {
      input.value = currentValue - 1
    }
  }
} 