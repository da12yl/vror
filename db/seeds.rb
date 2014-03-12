# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Employee.create(
[{:name => "Joe Smith", :hiredate => Time.now, :image => 'placeholder.jpg'},
  {:name => "John Ross", :hiredate => Time.now, :image => 'placeholder.jpg'},
  {:name => "Darrel O'Malley", :hiredate => Time.now, :image => 'placeholder.jpg'},
  {:name => "Gean Crocker", :hiredate => Time.now, :image => 'placeholder.jpg'},
  {:name => "Sam Donnely", :hiredate => Time.now, :image => 'placeholder.jpg'},
  {:name => "Richard Von Woss", :hiredate => Time.now, :image => 'placeholder.jpg'},
  {:name => "Corey Duele", :hiredate => Time.now, :image => 'placeholder.jpg'},
  {:name => "Shane Argone", :hiredate => Time.now, :image => 'placeholder.jpg'},
  {:name => "Erick Strickland", :hiredate => Time.now, :image => 'placeholder.jpg'},
  {:name => "Tammy Samuelson", :hiredate => Time.now, :image => 'placeholder.jpg'},
  {:name => "Richard Sherman", :hiredate => Time.now, :image => 'placeholder.jpg'},
  {:name => "Mike Gretien", :hiredate => Time.now, :image => 'placeholder.jpg'}
])