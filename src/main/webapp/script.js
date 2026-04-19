/**
 * 
 */

function selectTab(el) {
    document.querySelectorAll(".tab").forEach((tab) => {
      tab.classList.remove("active");
    });
    el.classList.add("active");
  }

function toggleMenu() {
    document.querySelector(".menu-card").classList.toggle("hidden");
}