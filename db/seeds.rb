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
User.create(email:"blancopablo1991@gmail.com", password:"123456", password_confirmation:"123456", role:"admin")
User.create(email:"librarian@librarian", password:"123456", password_confirmation:"123456", role:"librarian")
User.create(email:"student1@student", password:"123456", password_confirmation:"123456", role:"student")
User.create(email:"student2@student", password:"123456", password_confirmation:"123456", role:"student")
User.create(email:"student3@student", password:"123456", password_confirmation:"123456", role:"student")
User.create(email:"student4@student", password:"123456", password_confirmation:"123456", role:"student")