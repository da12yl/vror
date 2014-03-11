angular.module('Scheduler')
.factory('EmployeeFactory', ()->
  emp = [{name : "Joe Smith", hire_date: +new Date, image : 'placeholder.jpg', hasMessages : true, messageCount : 1},
  {name : "John Ross", hire_date: +new Date, image : 'placeholder.jpg', hasRequests : true, hasMessages:true, requestCount : 2, messageCount : 4},
  {name : "Darrel O'Malley", hire_date: +new Date, image : 'placeholder.jpg', hasRequests:true, requestCount: 2},
  {name : "Gean Crocker", hire_date: +new Date, image : 'placeholder.jpg'},
  {name : "Sam Donnely", hire_date: +new Date, image : 'placeholder.jpg', hasMessages : true, messageCount : 1},
  {name : "Richard Von Woss", hire_date: +new Date, image : 'placeholder.jpg'},
  {name : "Corey Duele", hire_date: +new Date, image : 'placeholder.jpg'},
  {name : "Shane Argone", hire_date: +new Date, image : 'placeholder.jpg', hasRequests:true, requestCount : 2},
  {name : "Erick Strickland", hire_date: +new Date, image : 'placeholder.jpg', hasRequests :true, requestCount : 1},
  {name : "Tammy Samuelson", hire_date: +new Date, image : 'placeholder.jpg'},
  {name : "Richard Sherman", hire_date: +new Date, image : 'placeholder.jpg'},
  {name : "Mike Gretien", hire_date: +new Date, image : 'placeholder.jpg'}]
  all : ->
    emp
)