# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Customer.create!(name: 'John Kennedy', home_phone: '416-234-3452', cell_phone: '416-234-1234', account: true )
Customer.create!(name: 'Jane Doe', home_phone: '416-453-3453', account:false )
Customer.create!(name: 'Fannie Mae', cell_phone: '416-564-4564', account: false )