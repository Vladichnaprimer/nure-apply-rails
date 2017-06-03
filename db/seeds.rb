# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: 'admin@example.com', password: 'password', password_confirmation: 'password', name: 'Admin', role: 0)

Faculty.create(
    name: 'Компьютерные науки',
    score: 715,
    link: 'http://nure.ua/university/structure/departments/kn/')
Faculty.create(
    name: 'Программная инженерия',
    score: 740,
    link: 'http://nure.ua/university/structure/departments/kn/software/')
Faculty.create(
    name: 'Издательско-полиграфическое дело',
    score: 700,
    link: 'http://nure.ua/university/structure/departments/kn/mst/')
Faculty.create(
    name: 'Информатика',
    score: 690,
    link: 'http://nure.ua/university/structure/departments/pmm/inf/')
Faculty.create(
    name: 'Компьютерная инженерия',
    score: 700,
    link: 'http://nure.ua/university/structure/departments/kiu/')
