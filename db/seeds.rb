# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# Examples:

#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ironhack = Project.create name: 'Ironhack', description: 'Ironhack is a...'
ironhack.entries.create minutes: 45, date: Time.now

Project.create name: 'Time tracking app'

recipes = Project.create name: 'Recipes', description: 'Track my favorite recipes'


recipes.entries.create hours: 0, minutes: 30, comments: "Got back from lunch"
recipes.entries.create hours: 2, minutes: 3, comments: "Went home"
recipes.entries.create minutes: 45, date: Time.new(2014,07,04)