class Flight < ApplicationRecord
  has_many :flight_passengers
  has_many :passengers, through: :flight_passengers


  def self.alphabetisize
    order(departure_city: :asc)
    # find_by_sql("SELECT * FROM flights ORDER BY flights.departure_city asc")
  end

  def adult_passengers
    passengers.where("age > 18")
  end
end
