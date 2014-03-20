// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require vendor/highcharts
//= require vendor/bootstrap.min
//= require vendor/angular
//= require ./angular/scheduler
//= require_tree ./angular
//= require_tree .

/* Datepicker HTML5 Input element default */
Date.prototype.inputTodayValue = (function(){
  var local = new Date(this);
  local.setMinutes(this.getMinutes() - this.getTimezoneOffset())
  return local.toJSON().slice(0, 10)
})
$(document).ready(function(){
  $('input[type=date]').val(new Date().inputTodayValue())
})