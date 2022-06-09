const buttons = document.querySelectorAll(".company-buttons button");
const sections = document.querySelectorAll(".company-section");
const card = document.querySelector(".company");

const handleButtonClick = e => {
    const targetSection = e.target.getAttribute("data-section");
    const section = document.querySelector(targetSection);
    targetSection !== "#about" ?
    card.classList.add("action") :
    card.classList.remove("action");
    card.setAttribute("data-state", targetSection);
    sections.forEach(s => s.classList.remove("action"));
    buttons.forEach(b => b.classList.remove("action"));
    e.target.classList.add("action");
    section.classList.add("action");
};

buttons.forEach(btn => {
    btn.addEventListener("click", handleButtonClick);
});