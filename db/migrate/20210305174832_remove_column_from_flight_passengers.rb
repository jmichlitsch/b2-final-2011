class RemoveColumnFromFlightPassengers < ActiveRecord::Migration[5.2]
  def change
    remove_column  :flight_passengers, :flights_id
    remove_column  :flight_passengers, :passengers_id
  end
end
