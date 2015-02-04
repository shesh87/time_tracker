# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# Examples:

#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


project1 = Project.create(name: "Sheonna", description: "Sheonna's stuff")
project2 = Project.create(name: "Alex", description: "Alex's stuff")
project3 = Project.create(name: "Josh", description: "Josh's stuff")
project4 = Project.create(name: "Max", description: "Max's stuff")

project1.entries.create(hours: 0, minutes: 30, comments: "Got back from lunch")
project2.entries.create(hours: 0, minutes: 30, comments: "Got back from lunch")
project3.entries.create(hours: 0, minutes: 30, comments: "Got back from lunch")
project4.entries.create(hours: 0, minutes: 30, comments: "Got back from lunch")

