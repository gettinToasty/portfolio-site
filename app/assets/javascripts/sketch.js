$(document).ready(function(){

  $(".color").each(function() {
    $(this).css("background", $(this).attr("id"));
  });

// sets color variables for all the colors
  var color = 'black';
  $('.color').click(function(){
    color = $(this).attr("id")
  });

//highlights selected color
  $('.color').click(function() {
    $('.color').css('outline', 'none');
    $(this).css({'outline': '2px solid #AD5EB8', 'outline-offset': '2px'});
  });

// generates the canvas
  $('#generate-canvas').click(function() {
    var gridSize = $('#size').val();
    if(gridSize > 60) { gridSize = 60 };
    if(gridSize < 1) { gridSize = 1 };
    $('#canvas-container').empty();
    $('#canvas-container').css('width',gridSize*20);
    for(i = 0; i<gridSize*gridSize; i++){
      $('#canvas-container').append("<div class= 'canvas-grid'></div>");
    };

// actual paint function
    var dragging = false;
    $('.canvas-grid').mousedown(function(){
      dragging = true;
      $('.canvas-grid').mousemove(function() {
        if(dragging===true) { $(this).css('background', color) };
      });
    });
    $('.canvas-grid').mouseup(function() {
      dragging = false;
    });
    $('#canvas-container').mouseleave(function(){
      dragging = false;
    });

// fill functionality
    $('#fill').click(function(){
      $('.canvas-grid').css('background', color);
    });

// toggle grid view
    $('#toggle-grid').click(function(){
      $('.canvas-grid').toggleClass('inactive-canvas-grid');
    });

  });
});
