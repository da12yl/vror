# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# Find out how to use angular-highcharts, this is fine for now

  # Role tooltips
$('ul.roles li').each((index, element)->
  e = $(element)
  if e.hasClass('active')
    e.tooltip({
      title: e.text(),
      placement: 'left',
      container: 'body'
    })
)