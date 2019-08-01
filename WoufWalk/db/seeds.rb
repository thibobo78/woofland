# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

d = Dog.create(name: "Sylvain")
puts "Bienvenue chez les Sims. Un chien a été crée. Il a pour nom #{d.name}"
ds = Dogsitter.create(name: "Thibault")
puts "Mais c'est un chien de Super_héros. Suuuuuuuper-#{ds.name}"
s = Stroll.create(dog: d, dogsitter: ds)
puts "#{s.dog.name} et #{s.dogsitter.name} vont se balader au parc ensemble"
arrayd = [d.strolls[1]]
arrayds = [ds.strolls[1]]

puts "Voici tout les strolls dans lequel #{d.name} a participé #{arrayd}"
puts "Voici tout les strolls dans lequel #{ds.name} a participé #{arrayds}"

c = City.create(city:"Paris")
puts "Ils se baladent à #{c} tous ensemble"
c.dog
s.dog
s.dogsitter
d.strolls
ds.strolls
