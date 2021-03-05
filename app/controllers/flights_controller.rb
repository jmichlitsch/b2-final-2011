class FlightsController < ApplicationController

  def index
    @flights = Flight.alphabetisize
  end

  def show
    @flight = Flight.find(params[:id])
    @passengers = @flight.adult_passengers
  end
end
