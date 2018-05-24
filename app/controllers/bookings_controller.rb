class BookingsController < ApplicationController

  def create
    @bike = Bike.find(params[:bike_id])
    @booking = Booking.new(booking_params)
    @booking.bike = @bike
    @booking.status = "pending"
    @booking.user_id = current_user.id
    if @booking.save
      redirect_to bike_path(@bike)
    else
      render "bikes/show"
    end
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "accepted"
    @booking.save
    redirect_to dashboard_path(bookings: true)
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.status = "declined"
    @booking.save
    redirect_to dashboard_path(bookings: true)
  end

  private



  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
