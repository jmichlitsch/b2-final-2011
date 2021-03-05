class Passenger < ApplicationRecord
has_many :flight_passengers
has_many :flights, through: :flight_passengers

def self.average_age
  Passenger.average(:age)
  end
end
