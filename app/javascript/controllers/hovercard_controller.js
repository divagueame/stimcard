import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="hovercard"
export default class extends Controller {
  static targets = ['card']
  static values = { url: String }
  
  show() {
    fetch(this.urlValue)
      .then((r) => {
        return r.text()
      })
      .then(html => {
          const fragment = document
            .createRange()
            .createContextualFragment(html);

        this.element.appendChild(fragment)
    })
  }
}
