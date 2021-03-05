class Flight_Passenger < ApplicationRecord
belongs_to :flight
belongs_to :passenger
end
