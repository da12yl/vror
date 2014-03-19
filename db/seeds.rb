# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create({name: "Steven Geer", email: "stevenegeer@gmail.com", hiredate: "2008-04-07", password: "asdf1234", password_confirmation: "asdf1234", admin:1})