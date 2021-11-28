import { website } from "../../declarations/website";

document.querySelector("form").addEventListener("submit", async (e) => {
  e.preventDefault();
  const button = e.target.querySelector("button");

  button.setAttribute("disabled", true);
  document.getElementById("next").innerText = "Calling blockchain!";
  setTimeout(function() {
    document.getElementById("next").innerText = 'Reaching Consensus...';
  }, 1000);
  
  var storyText = await website.next();
  var buttonText = await website.getButtonText();
  var imageURL = await website.getImage();

  button.removeAttribute("disabled");

  document.getElementById("storyText").innerText = storyText;
  document.getElementById("next").innerText = buttonText;
  document.getElementById("picture").src = imageURL;

  return false;
});

window.addEventListener('load', (event) => {
  website.resetCounter();
});