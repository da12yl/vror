angular.module('Scheduler')
.factory('EmployeeFactory', ()->
  emp = [{name : "Joe Smith", hire_date: +new Date, image : 'placeholder.jpg', messages : {count : 2}},
  {name : "John Ross", hire_date: +new Date, image : 'placeholder.jpg', requests : {count : 1}},
  {name : "Darrel O'Malley", hire_date: +new Date, image : 'placeholder.jpg', requests : {count : 2}},
  {name : "Gean Crocker", hire_date: +new Date, image : 'placeholder.jpg'},
  {name : "Sam Donnely", hire_date: +new Date, image : 'placeholder.jpg', messages : {count : 3}},
  {name : "Richard Von Woss", hire_date: +new Date, image : 'placeholder.jpg'},
  {name : "Corey Duele", hire_date: +new Date, image : 'placeholder.jpg'},
  {name : "Shane Argone", hire_date: +new Date, image : 'placeholder.jpg', requests : {count : 2}, messages : {count : 1}},
  {name : "Erick Strickland", hire_date: +new Date, image : 'placeholder.jpg', requests : {count : 1}},
  {name : "Tammy Samuelson", hire_date: +new Date, image : 'placeholder.jpg'},
  {name : "Richard Sherman", hire_date: +new Date, image : 'placeholder.jpg', messages : {count : 2}},
  {name : "Mike Gretien", hire_date: +new Date, image : 'placeholder.jpg'}]
  all : ->
    emp
)