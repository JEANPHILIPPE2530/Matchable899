import '../plugins/hammer.min.js'

import { Controller } from "stimulus"

const myMatch = []
export default class extends Controller {
    static targets = [ "profile" ]

    connect() {
        // this.outputTarget.textContent = 'Hello, from Card Swipe!'
        console.log ('hello, card swipe')

        const maxAngle = 42;
        const smooth = 0.3;
        const threshold = 42;
        const thresholdMatch = 50;

        // let profiles = document.querySelectorAll('.profile');
        console.log(this.profileTargets)
        
        const setupDragAndDrop = (p) => {
            const hammertime = new Hammer(p);
            
            hammertime.on('pan', function (cardProfile) {
                p.classList.remove('profile--back');
                let posX = cardProfile.deltaX;
                let posY = Math.max(0, Math.abs(posX * smooth) - threshold);
                let angle = Math.min(Math.abs(cardProfile.deltaX * smooth / 100), 1) * maxAngle;
                if (cardProfile.deltaX < 0) {
                angle *= -1;
            }
            
            p.style.transform = `translateX(${posX}px) translateY(${posY}px) rotate(${angle}deg)`;
            p.classList.remove('profile--matching');
            p.classList.remove('profile--nexting');
            if (posX > thresholdMatch) {
                p.classList.add('profile--matching');
            } else if (posX < -thresholdMatch) {
                p.classList.add('profile--nexting');
            }
            
            if (cardProfile.isFinal) {
                p.style.transform = ``;
                if (posX > thresholdMatch) {
                    p.classList.add('profile--match');

                } else if (posX < -thresholdMatch) {
                    p.classList.add('profile--next');
                } else {
                    p.classList.add('profile--back');
                }
            }
        });
    }
    
    this.profileTargets.forEach((p) => setupDragAndDrop(p));
    }

    

}

// let profiles = document.querySelectorAll('.profile');

// profiles.forEach(setupDragAndDrop);

// function setupDragAndDrop(profile) {
//     const hammertime = new Hammer(profile);

//     hammertime.on('pan', function (cardProfile) {
//         profile.classList.remove('profile--back');
//         let posX = cardProfile.deltaX;
//         let posY = Math.max(0, Math.abs(posX * smooth) - threshold);
//         let angle = Math.min(Math.abs(cardProfile.deltaX * smooth / 100), 1) * maxAngle;
//         if (cardProfile.deltaX < 0) {
//         angle *= -1;
//         }

//         profile.style.transform = `translateX(${posX}px) translateY(${posY}px) rotate(${angle}deg)`;
//         profile.classList.remove('profile--matching');
//         profile.classList.remove('profile--nexting');
//         if (posX > thresholdMatch) {
//         profile.classList.add('profile--matching');
//         } else if (posX < -thresholdMatch) {
//         profile.classList.add('profile--nexting');
//         }

//         if (cardProfile.isFinal) {
//         profile.style.transform = ``;
//         if (posX > thresholdMatch) {
//             profile.classList.add('profile--match');
//         } else if (posX < -thresholdMatch) {
//             profile.classList.add('profile--next');
//         } else {
//             profile.classList.add('profile--back');
//         }
//         }
//     });
// }
