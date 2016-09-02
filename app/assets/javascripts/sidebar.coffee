$(document).on "turbolinks:load", ->
  $("#design-tab").click ->
    $("#sidebar").css background:"#46AB8F"

  $("#fashion-tab").click ->
    $("#sidebar").css background:"#000000"

  $("#main-tab").click ->
    $("#sidebar").css background:"#AD5EB8"

  $("#contact-tab").click ->
    $("#sidebar").css background:"#AD5EB8"
