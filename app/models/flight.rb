class Flight < ApplicationRecord
  has_many :flight_passengers
  has_many :passengers, through: :flight_passengers


  def self.alphabetisize
    find_by_sql("SELECT * FROM flights ORDER BY flights.departure_city desc")
  end
end
