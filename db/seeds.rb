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
Flower.create!(name: 'flower1',rating: 5, price: 9, descripion:" Lorem ipsum ", category:decoration, photo_url:"https://images.unsplash.com/photo-1471899236350-e3016bf1e69e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1951&q=80")
Flower.create!(name: 'flower2',rating: 4, price: 9, descripion:" Lorem ipsum ", category:decoration, photo_url:"https://images.unsplash.com/photo-1471899236350-e3016bf1e69e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1951&q=80")
Flower.create!(name: 'flower3',rating: 4, price: 10, descripion:" Lorem ipsum ", category:decoration, photo_url:"https://images.unsplash.com/photo-1471899236350-e3016bf1e69e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1951&q=80")
Flower.create!(name: 'flower4',rating: 5, price: 9, descripion:" Lorem ipsum ", category:recuperation, photo_url:"https://images.unsplash.com/photo-1471899236350-e3016bf1e69e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1951&q=80")
Flower.create!(name: 'flower5',rating: 4, price: 9, descripion:" Lorem ipsum ", category:recuperation, photo_url:"https://images.unsplash.com/photo-1471899236350-e3016bf1e69e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1951&q=80")
Flower.create!(name: 'flower6',rating: 4, price: 10, descripion:" Lorem ipsum ", category:recuperation, photo_url:"https://images.unsplash.com/photo-1471899236350-e3016bf1e69e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1951&q=80")


puts 'Finished!'
