require 'rails_helper'

RSpec.describe 'Flights Show' do
  describe "When I visit Flight Show" do
    it 'Sees each passenger and information about each flight' do

      @flight_1 = Flight.create(flight_number: "1515",
                               date: "3/12/2021",
                               departure_city: "Denver",
                               arrival_city: "New York")



      @passenger_1 = Passenger.create(name: "John Smith",
                                     age: 43)
      @passenger_2 = Passenger.create(name: "Joe Dirt",
                                     age: 17)
      @passenger_3 = Passenger.create(name: "Forrest Gump",
                                     age: 27)
      @passenger_4 = Passenger.create(name: "Jenny Gump",
                                     age: 27)


      @flight_passengers_1 = Flight_Passenger.create(passengers_id: @passenger_1, flights_id: @flight_1)
      @flight_passengers_2 = Flight_Passenger.create(passengers_id: @passenger_2, flights_id: @flight_1)
      @flight_passengers_3 = Flight_Passenger.create(passengers_id: @passenger_3, flights_id: @flight_1)
      @flight_passengers_4 = Flight_Passenger.create(passengers_id: @passenger_4, flights_id: @flight_1)

      visit "/flights/#{@flight_1.id}"

      expect(page).to have_content(@flight_1.flight_number)
      expect(page).to have_content(@flight_1.date)
      expect(page).to have_content(@flight_1.departure_city)
      expect(page).to have_content(@flight_1.arrival_city)
      expect(page).to have_content(@passenger_1.name)
      expect(page).to have_content(@passenger_3.name)
      expect(page).to have_content(@passenger_4.name)

    end
  end
end
