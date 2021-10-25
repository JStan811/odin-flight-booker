class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight_id])
    @number_of_passengers = params[:number_of_passengers].to_i
    @number_of_passengers.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    @flight = Flight.find(params[:booking][:flight_id])

    if @booking.save
      redirect_to @booking
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:id, :name, :email])
  end
end
