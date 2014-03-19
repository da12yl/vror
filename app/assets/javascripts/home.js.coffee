# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# Find out how to use angular-highcharts, this is fine for now
$(document).ready ->
  now = new Date()
  data = [12, 55, 45, 23, 35, 29, 40, 30, 36, 45, 90, 120, 38, 25, 43, 48]
  max = 0
  for amount in data
    if data[amount] > max
      max = data[amount]
    max += 30
    max
  hc =
    chart:
      renderTo: 'highchart_place'
      type: 'line'
    legend:
      false
    title:
      text: false
    xAxis:
      type: 'datetime'
    yAxis:
      min: 0
      max: data.max
      title:
        text: "Cash"
    series: [
      {
        name: "Steve"
        data: data,
        pointStart: Date.UTC(2014, 4, 1),
        pointInterval: 24 * 3600 * 1000
      }
    ]
  $('#highchart_place').highcharts(hc)

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