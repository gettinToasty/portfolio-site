# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "turbolinks:load", ->
  $(".shot-wrapper").click ->
    img = $("img", this).attr("src")
    $("#shot-img-active").append("<img src=#{img} />")
    $("#shot-img.active").fadeIn()
    $("#gallery-background").fadeIn()

  $("#gallery-background").click ->
    $("#shot-img-active").fadeOut()
    $("#shot-img-active").empty()
    $(this).fadeOut()
