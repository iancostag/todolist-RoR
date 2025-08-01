import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["prazo"]

  connect() {
    this.element.addEventListener('show.bs.modal', (event) => {
      const button = event.relatedTarget
      const prazo = button.getAttribute('data-prazo')
       this.formTarget.reset()
      if (prazo) {
        this.prazoTarget.value = prazo
      }
    })
  }
}
