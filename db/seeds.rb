# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

# On commence par vider les BDD
Course.destroy_all
Lesson.destroy_all

# On commence par créer 10 Cours
10.times do 
	character = Faker::HarryPotter.character
	Course.create(title: character, description: "Un cours sur les sorts de #{character}" )
end
puts "10 classes ont été crées"

# Puis on va créer 5 lessons par cours
Course.all.each do |course|
	5.times do
		Lesson.create(title: Faker::HarryPotter.spell, body: "Leçon consacrée à l'apprentissage de  #{Faker::HarryPotter.spell}", course: course)
	end
end
puts "Chaque cours dispose à présent de 5 cours"
