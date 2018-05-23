class BookingsController < ApplicationController

  def create
    @bike = Bike.find(params[:bike_id])
    @booking = Booking.new
    @booking.bike = @bike
    @booking.status = "pending"
    @booking.user_id = current_user.id
    if @booking.save
      redirect_to bike_path(@bike)
    else
      render "bikes/show"
    end
  end

  private



  # def booking_params
  #   params.require(:bookings).permit(:status)
  # end

end
