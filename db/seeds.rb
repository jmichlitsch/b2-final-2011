# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@flight_1 = Flight.create(flight_number: "1515",
                         date: "3/12/2021",
                         departure_city: "Denver",
                         arrival_city: "New York")
@flight_2 = Flight.create(flight_number: "3459",
                         date: "3/12/2021",
                         departure_city: "Denver",
                         arrival_city: "Seattle")
@flight_3 = Flight.create(flight_number: "2020",
                         date: "3/12/2021",
                         departure_city: "Denver",
                         arrival_city: "Miami")
