class FlightsController < ApplicationController

  def index
    @flights = Flight.alphabetisize
  end

  def 
end
