# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'change', '#movie', ->
  $.ajax
    url: "/theatres/get_theatres"
    type: 'GET'
    data:
      movie_id: $(this).val()

$(document).on 'change', '#theatre', ->
  $.ajax
    url: "/shows/get_shows"
    type: 'GET'
    data:
     theatre_id: $(this).val(),
     movie_id: $('#movie').val()

$(document).on 'change', '#show_id', ->
  $.ajax
    url: "/shows/" + $(this).val() + "/get_show"
    type: 'GET'
