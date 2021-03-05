require 'rails_helper'

RSpec.describe 'Flights Show' do
  describe "When I visit Flight Show" do
    it 'Sees each passenger and information about each flight' do

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

      @passenger_1 = Passenger.create(name: "John Smith",
                                     age: 43)
      @passenger_2 = Passenger.create(name: "Joe Dirt",
                                     age: 19)
      @passenger_3 = Passenger.create(name: "Forrest Gump",
                                     age: 27)
      @passenger_4 = Passenger.create(name: "Jenny Gump",
                                     age: 27)
      @passenger_5 = Passenger.create(name: "Jane Doe",
                                     age: 32)
      @passenger_6 = Passenger.create(name: "Ashley Johnson",
                                     age: 22)

      @flight_passengers_1 = Flight_Passenger.create(passengers_id: @passenger_1, flights_id: @flight_1)
      @flight_passengers_2 = Flight_Passenger.create(passengers_id: @passenger_2, flights_id: @flight_1)
      @flight_passengers_3 = Flight_Passenger.create(passengers_id: @passenger_3, flights_id: @flight_2)
      @flight_passengers_4 = Flight_Passenger.create(passengers_id: @passenger_4, flights_id: @flight_2)
      @flight_passengers_5 = Flight_Passenger.create(passengers_id: @passenger_5, flights_id: @flight_3)
      @flight_passengers_6 = Flight_Passenger.create(passengers_id: @passenger_6, flights_id: @flight_3)


    end
  end
end   
