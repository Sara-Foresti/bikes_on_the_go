class BikesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_bike, only: [:edit, :update, :show]

  def index
    if params[:location]
      @bikes = Bike.where("address iLIKE ?", "%#{params[:location]}%").where.not(latitude: nil, longitude: nil)
    else
      @bikes = Bike.where.not(latitude: nil, longitude: nil)
    end
    # @bikes = Bike.where.not(latitude: nil, longitude: nil)

    @markers = @bikes.map do |bike|
      {
        lat: bike.latitude,
        lng: bike.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
  end

  def show
    @bike = Bike.find(params[:id])
    @booking = Booking.new
    @markers = [{ lat: @bike.latitude, lng: @bike.longitude }]

  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.user = current_user

    if @bike.save
      redirect_to bike_path(@bike)
    else
      render :new
    end
  end

  def edit

  end

  def update
    bike_params
    @bike.update(bike_params)
    redirect_to bike_path(@bike)

  end

  def destroy
    @bike = Bike.find(params[:id])
    @bike.destroy
    redirect_to dashboard_path
  end



  private

  def bike_params
    params.require(:bike).permit(:name, :description, :size, :category, :price, :address, :photo)
  end

  def set_bike
    @bike = Bike.find(params[:id])
  end

end
