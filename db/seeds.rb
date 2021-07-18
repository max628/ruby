# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!([{
                  email:"admin@email.com",
                  password:"password",
                  role:"admin",
                  name:"Admin 123",
                  company_id: 13
              }])

Company.create!([{
                     name:"Admin HCH",
                     website: "admincompany@admin.com",
                     address: "Avent Ferry",
                     size: "400",
                     founded_in: "1989",
                     synopsis: "Good Company in those times",
                     revenue: "4000",
                     user_id:1
                 }])
