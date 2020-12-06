# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Book.create(title:"El jose de los anillos", author:"JR Pepe", isbn:'13214125', published_at:"12/10/2020", editorial:"Clarin")
Book.create(title:"El pepe de los anillos 2", author:"Pepe Pepin", isbn:'123214125', published_at:"12/10/2020", editorial:"Clarin")
Book.create(title:"El carlos de los anillos 3", author:"Pepe Pepin",isbn:'1321412435', published_at:"12/10/2020", editorial:"Clarin")
Book.create(title:"El Libro de los plagios", author:"Nik", isbn:'123214125', published_at:"12/10/2020", editorial:"Clarin")
Book.create(title:"Rambo 23", author:"Ghandi",isbn:'1321412435', published_at:"12/10/2020", editorial:"Ole")
User.create(email:"blancopablo1991@gmail.com",name:"Pablo", last_name:"Blanco", password:"123456", password_confirmation:"123456", role:"admin")
User.create(email:"librarian@librarian", name:"vivlio", last_name:"tecario", password:"123456", password_confirmation:"123456", role:"bibliotecario")
User.create(email:"estudiante1@estudiante", name:"Pepe", last_name:"Garolfo", password:"123456", password_confirmation:"123456", role:"estudiante")
User.create(email:"estudiante2@estudiante", name:"Juan", last_name:"Garolfo", password:"123456", password_confirmation:"123456", role:"estudiante")
User.create(email:"estudiante3@estudiante", name:"Carla", last_name:"Garolfo", password:"123456", password_confirmation:"123456", role:"estudiante")
User.create(email:"estudiante4@estudiante", name:"Roman", last_name:"Garolfo", password:"123456", password_confirmation:"123456", role:"estudiante")