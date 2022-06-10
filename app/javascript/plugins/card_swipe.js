import './hammer.min.js'


let profiles = document.querySelectorAll('.profile');

const maxAngle = 42;
const smooth = 0.3;
const threshold = 42;
const thresholdMatch = 50;
profiles.forEach(setupDragAndDrop);

function setupDragAndDrop(profile) {
    const hammertime = new Hammer(profile);
    
    hammertime.on('pan', function (cardProfile) {
        profile.classList.remove('profile--back');
        let posX = cardProfile.deltaX;
        let posY = Math.max(0, Math.abs(posX * smooth) - threshold);
        let angle = Math.min(Math.abs(cardProfile.deltaX * smooth / 100), 1) * maxAngle;
        if (cardProfile.deltaX < 0) {
        angle *= -1;
        }

        profile.style.transform = `translateX(${posX}px) translateY(${posY}px) rotate(${angle}deg)`;
        profile.classList.remove('profile--matching');
        profile.classList.remove('profile--nexting');
        if (posX > thresholdMatch) {
        profile.classList.add('profile--matching');
        } else if (posX < -thresholdMatch) {
        profile.classList.add('profile--nexting');
        }

        if (cardProfile.isFinal) {
        profile.style.transform = ``;
        if (posX > thresholdMatch) {
            profile.classList.add('profile--match');
        } else if (posX < -thresholdMatch) {
            profile.classList.add('profile--next');
        } else {
            profile.classList.add('profile--back');
        }
        }
    });
}


