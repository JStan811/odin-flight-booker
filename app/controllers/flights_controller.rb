class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @uniq_flights_sorted = Flight.pluck(:start_datetime).map {|a| [a.to_s[0, 10], a.to_s[0, 10]] }.uniq.sort
  end
end
