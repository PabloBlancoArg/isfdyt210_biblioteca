# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Book.create(title:"El jose de los anillos", author:"Pepe Pepin", isbn:'13214125')
Book.create(title:"El pepe de los anillos 2", author:"Pepe Pepin", isbn:'123214125')
Book.create(title:"El carlos de los anillos 3", author:"Pepe Pepin",isbn:'1321412435')