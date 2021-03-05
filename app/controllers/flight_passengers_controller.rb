class FlightPassengersController < ApplicationController
  def destroy
    @flight_passenger = FlightPassenger.find_by(flight_id: params[:id], passenger_id: params[:passenger_id])
    FlightPassenger.destroy(@flight_passenger.id)
    redirect_to "/flights/#{params[:id]}"
  end
end
