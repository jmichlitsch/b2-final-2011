class AddReferencesFlightPassengers < ActiveRecord::Migration[5.2]
  def change
    add_reference :flight_passengers, :flight, index: true
    add_reference :flight_passengers, :passenger, index: true
  end
end
