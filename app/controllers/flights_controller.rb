class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @uniq_flights_sorted = Flight.pluck(:start_datetime).map {|a| [a.to_s[0, 10], a.to_s[0, 10]] }.uniq.sort
    @available_flights = Flight.available_flights(params[:start_airport_id], params[:finish_airport_id], params[:start_datetime])
  end
end
