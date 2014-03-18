# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->
  g = $('li#gravatar img')
  g.tooltip({
    title: "Successfully logged in!",
    placement: 'left',
    trigger: 'manual'
  })
  g.tooltip('show')
  setTimeout( ->
    g.tooltip('hide')
  , 5000)

#$(document).on('page:load ready', ready)