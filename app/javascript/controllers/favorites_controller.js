import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
    favorite() {
        if (this.element.dataset.favorited == 'true') {
            this.element.dataset.favorited = 'false'
            this.element.style.color = 'black';
        } else {
            console.log('step two')
            this.element.dataset.favorited = 'true'
            this.element.style.color = 'red';
        }
    }
}