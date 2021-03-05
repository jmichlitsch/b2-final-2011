class FlightsController < ApplicationController

  def index
    @flights = Flight.alphabetisize
  end
end
