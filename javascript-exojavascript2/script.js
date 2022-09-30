// Exo 1
const footer = document.querySelector("footer");
let counter1 = 1;
footer.addEventListener("click", function() {
  console.log(`Clic n°${counter1} !`);
  counter1++;
})

// Exo 2
const navbarHeader = document.querySelector(".navbar-toggler");
const navbarMenu = document.getElementById("navbarHeader");
navbarHeader.addEventListener("click", function() {
  navbarMenu.classList.toggle("collapse");
})

// Exo 3
const editBtns = document.querySelectorAll(".btn-outline-secondary");
const cards = document.querySelectorAll(".card");
editBtns[0].addEventListener("click", e => {
  cards[0].style.color = "red";
})


// Exo 4
editBtns[1].addEventListener("click", e => {
    cards[1].style.color == "green" ? (cards[1].style.color = "black") : (cards[1].style.color = "green");
  })

  // Exo 5
const navbar = document.querySelector('.navbar');
const head = document.getElementsByTagName("head")[0];
const link = document.head.getElementsByTagName("link");
let link2 = link[0];
navbar.addEventListener('dblclick', function() {
  if (link[0]) {
    link[0].remove()
  }
  else {
    document.head.appendChild(link2);
  }
})