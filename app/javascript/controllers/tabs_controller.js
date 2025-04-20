import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["tabButton", "tabContent"]

  connect() {
    // Show first tab by default
    this.showTab("description")
  }

  changeTab(event) {
    const tabId = event.currentTarget.dataset.tab
    this.showTab(tabId)
  }

  showTab(tabId) {
    // Update tab buttons
    this.tabButtonTargets.forEach(button => {
      if (button.dataset.tab === tabId) {
        button.classList.remove("border-transparent", "text-gray-500", "hover:text-gray-700", "hover:border-gray-300")
        button.classList.add("border-gray-900", "text-gray-900")
      } else {
        button.classList.remove("border-gray-900", "text-gray-900")
        button.classList.add("border-transparent", "text-gray-500", "hover:text-gray-700", "hover:border-gray-300")
      }
    })

    // Update tab content
    this.tabContentTargets.forEach(content => {
      if (content.id === tabId) {
        content.classList.remove("hidden")
      } else {
        content.classList.add("hidden")
      }
    })
  }
} 