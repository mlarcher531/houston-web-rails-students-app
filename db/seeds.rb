# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Instructor.destroy_all
Student.destroy_all

i1 = Instructor.create(name: "Teacher 1")
i2 = Instructor.create(name: "Teacher 2")

i1.students.create!(name: "Mike", age: 29, major: "Botany")
i2.students.create!(name: "Jocelyn", age: 25, major: "Stuff")

