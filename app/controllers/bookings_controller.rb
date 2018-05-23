class BookingsController < ApplicationController

  def create
  @bike = Bike.find(params[:bike_id])
  @booking = Booking.new(booking_params)
  @booking.bike = @bike
  if @booking.save
    redirect_to bike_path(@bike)
  else
    render :new
  end

  private



  def booking_params
    params.require(:bookings).permit(:status)
  end

end
