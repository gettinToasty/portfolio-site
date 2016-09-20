$(document).on "turbolinks:load", ->

  topMargin = "10%"
  adjustTop = () -> $("ul").css {top:topMargin}, 200

  $("#design-tab").click ->
    $("#sidebar").css background:"#46AB8F"
    adjustTop()
    $("#apps-description").slideUp(200)
    $("#fashion-description").slideUp(200)
    $("#design-description").slideDown(200)

  $("#fashion-tab").click ->
    $("#sidebar").css background:"#000000"
    adjustTop()
    $("#apps-description").slideUp(200)
    $("#design-description").slideUp(200)
    $("#fashion-description").slideDown(200)

  $("#main-tab").click ->
    $("#sidebar").css background:"#AD5EB8"
    adjustTop()
    $("#fashion-description").slideUp(200)
    $("#design-description").slideUp(200)
    $("#apps-description").slideDown(200)

  $("#contact-tab").click ->
    $("#sidebar").css background:"#AD5EB8"
    $("ul").animate {top:"20%"}, 200
    $("#apps-description").slideUp(200)
    $("#fashion-description").slideUp(200)
    $("#design-description").slideUp(200)
