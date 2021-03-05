require 'rails_helper'

RSpec.describe 'Flights Index' do
  describe "When I visit Flight Index" do
    it 'Sees each flight and information about each flight' do

      @flight_1 = Flight.create(flight_number: "1515",
                               date: "3/12/2021",
                               departure_city: "Denver",
                               arrival_city: "New York")

      @flight_2 = Flight.create(flight_number: "3459",
                               date: "3/12/2021",
                               departure_city: "Austin",
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

      @flight_passengers_1 = FlightPassenger.create(passenger_id: @passenger_1.id, flight_id: @flight_1.id)
      @flight_passengers_2 = FlightPassenger.create(passenger_id: @passenger_2.id, flight_id: @flight_1.id)
      @flight_passengers_3 = FlightPassenger.create(passenger_id: @passenger_3.id, flight_id: @flight_2.id)
      @flight_passengers_4 = FlightPassenger.create(passenger_id: @passenger_4.id, flight_id: @flight_2.id)
      @flight_passengers_5 = FlightPassenger.create(passenger_id: @passenger_5.id, flight_id: @flight_3.id)
      @flight_passengers_6 = FlightPassenger.create(passenger_id: @passenger_6.id, flight_id: @flight_3.id)

      visit '/flights'
      save_and_open_page
      expect(page).to have_content(@flight_1.flight_number)
      expect(page).to have_content(@flight_1.date)
      expect(page).to have_content(@flight_1.departure_city)
      expect(page).to have_content(@flight_1.arrival_city)
      expect(page).to have_content(@flight_2.flight_number)
      expect(page).to have_content(@flight_2.date)
      expect(page).to have_content(@flight_2.departure_city)
      expect(page).to have_content(@flight_2.arrival_city)
      expect(page).to have_content(@flight_3.flight_number)
      expect(page).to have_content(@flight_3.date)
      expect(page).to have_content(@flight_3.departure_city)
      expect(page).to have_content(@flight_3.arrival_city)
      expect(@flight_2.flight_number).to appear_before(@flight_1.flight_number)
    end
  end
end
