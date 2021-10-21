class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @uniq_flights_sorted = Flight.pluck(:start_datetime).map {|a| [a.to_s[0, 10], a.to_s[0, 10]] }.uniq.sort
    @available_flights = Flight.where("start_airport_id = ? AND finish_airport_id = ? AND start_datetime LIKE ?", params[:start_airport_id].to_i, params[:finish_airport_id].to_i, "#{params[:start_datetime]}%")
    # @flights.each do |flight|
    #   if flight.start_airport_id == params[:start_airport_id].to_i && flight.finish_airport_id == params[:finish_airport_id].to_i && flight.start_datetime.to_s[0, 10] == params[:start_datetime]
    #     @available_flights << flight
    #   end
    # end
  end
end
