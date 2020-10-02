# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Flower.destroy_all
Category.destroy_all

puts 'Creating categories...'
recuperation = Category.create!(name: 'recuperation')
decoration = Category.create!(name: 'decoration')

puts 'Creating flowers...'
Flower.create!(name: 'Vase France',rating: 5, price: 55, descripion:"vase France vintage style Vallauris 1950", category:decoration, photo_url:"https://i.etsystatic.com/24937432/r/il/5391e7/2517535222/il_1588xN.2517535222_w8ww.jpg")
Flower.create!(name: 'boîte en zinc ancien',rating: 5, price: 60, descripion:"boîte en zinc ancien", category:decoration, photo_url:"https://i.etsystatic.com/24937432/r/il/766435/2565103389/il_1588xN.2565103389_e9ub.jpg")
Flower.create!(name: 'lampe tempête  vintage',rating: 5, price: 170, descripion:"lampe tempête année 1950 vintage", category:decoration, photo_url:"https://i.etsystatic.com/24937432/r/il/469d2b/2517198100/il_1588xN.2517198100_1fpd.jpg")
Flower.create!(name: 'luminaire',rating: 5, price: 255, descripion:"luminaire , lampe en cerisier , zinc et cuivre tissé a la main", category:decoration, photo_url:"https://i.etsystatic.com/24937432/r/il/3a1ffb/2564823489/il_1588xN.2564823489_gg7c.jpg")
Flower.create!(name: 'luminaire',rating: 5, price: 350, descripion:"luminaire en zinc,cuivre et châtaigner bois brûlé exclusivité", category: decoration, photo_url:"https://i.etsystatic.com/24937432/r/il/477d0a/2509447066/il_1588xN.2509447066_jdpu.jpg")
Flower.create!(name: 'luminaire crépuscule',rating: 4, price: 305, descripion:"luminaire 'crépuscule' base en teck patiné bois de cerisier brulé cordon vintage et interrupteur bakélite ", category:decoration, photo_url:"https://i.etsystatic.com/24937432/r/il/f2ad3a/2500345152/il_1588xN.2500345152_qhur.jpg")


puts 'Finished!'
