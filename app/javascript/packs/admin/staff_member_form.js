document.addEventListener("DOMContentLoaded", () => {
  const form = document.querySelector("form.edit_staff_member");
  const passwordField = form.querySelector("input[type='password']");
  const button1 = document.getElementById("enable-password-field");
  const button2 = document.getElementById("disable-password-field");

  form.addEventListener("click", event => {
    if (event.target === button1) {
      passwordField.removeAttribute("disabled");
      button1.style.display = "none";
      button2.style.display = "inline-block";
    }
    else if (event.target === button2) {
      passwordField.setAttribute("disabled", "disabled");
      button1.style.display = "inline-block";
      button2.style.display = "none";
    }
  })
});
