// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

import "controllers"
import "bootstrap"


const achievements = document.querySelectorAll(".achievement")
achievements.forEach(achievement =>{
  let link = achievement.querySelector(".links")
  link.addEventListener("click", () => {
    let id = link.dataset.achievementId
    const form = Array.from(document.querySelectorAll(".form")).find(form => form.dataset.achievementId === id)
    console.log(id)
    console.log(form)
    form.classList.remove("d-none")
    achievement.classList.add("d-none")
  })
})
