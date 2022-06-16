import '../plugins/hammer.min.js'
// import { csrfToken } from "@rails/ujs"

import { Controller } from "stimulus"

const myMatchId = []
export default class extends Controller {
    static targets = [ "profiled", "form" ]
    static values = {developerId: Number}

    connect() {
        console.log('swiped success')
        const maxAngle = 42;
        const smooth = 0.3;
        const threshold = 42;
        const thresholdMatch = 50;

        const setupDragAndDrop = (prD) => {
            const hammertime = new Hammer(prD);

            hammertime.on('pan', function (cardProfile) {
                prD.classList.remove('profile--back');
                let posX = cardProfile.deltaX;
                let posY = Math.max(0, Math.abs(posX * smooth) - threshold);
                let angle = Math.min(Math.abs(cardProfile.deltaX * smooth / 100), 1) * maxAngle;
                if (cardProfile.deltaX < 0) {
                angle *= -1;
            }

            prD.style.transform = `translateX(${posX}px) translateY(${posY}px) rotate(${angle}deg)`;
            prD.classList.remove('profile--matching');
            prD.classList.remove('profile--nexting');
            if (posX > thresholdMatch) {
                prD.classList.add('profile--matching');
            } else if (posX < -thresholdMatch) {
                prD.classList.add('profile--nexting');
            }

            if (cardProfile.isFinal) {
                prD.style.transform = ``;
                if (posX > thresholdMatch) {
                    prD.classList.add('profile--match');
                } else if (posX < -thresholdMatch) {
                    prD.classList.add('profile--next');
                } else {
                    prD.classList.add('profile--back');
                }
                const devIdMatchEl = document.querySelectorAll('.profile--match .card-comp-id')
                devIdMatchEl.forEach(el => sendToMatchController(el.innerText))
                // sendToMatchController.catch((error) => {console.log(error)})
            }
        });
    }

    let sendToMatchController =(element) => {
        console.log(element)
        element.preventDefault()
        const inputForm = document.getElementById('match_company_id')
        inputForm.value = element
        this.formTarget.submit()
        console.log(element)
    }

    this.profiledTargets.forEach((prD) => setupDragAndDrop(prD));
}

}
