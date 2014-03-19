# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create({name: "Steven Geer", email: "stevenegeer@gmail.com", hiredate: "2008-04-07", password: "asdf1234", password_confirmation: "asdf1234", admin:1, phone: "4088919446"})
Tip.create([
  {user_id: 1, day: "2014-03-01", amount: 13},
  {user_id: 1, day: "2014-03-02", amount: 25},
  {user_id: 1, day: "2014-03-03", amount: 35},
  {user_id: 1, day: "2014-03-05", amount: 68},
  {user_id: 1, day: "2014-03-06", amount: 74},
  {user_id: 1, day: "2014-03-08", amount: 91},
  {user_id: 1, day: "2014-03-09", amount: 45},
  {user_id: 1, day: "2014-03-10", amount: 18},
  {user_id: 1, day: "2014-03-11", amount: 23},
  {user_id: 1, day: "2014-03-12", amount: 49}
])