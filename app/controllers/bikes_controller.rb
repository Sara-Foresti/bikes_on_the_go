class BikesController < ApplicationController
before_action :set_bike, only: [:edit, :update, :show]
  def index
    if params[:location]
      @bikes = Bike.where("address iLIKE ?", "%#{params[:location]}%")
    else
      @bikes = Bike.all
    end
  end

  def show
    @bike = Bike.find(params[:id])
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
    params.require(:bike).permit(:name, :description, :size, :category, :price, :address)
  end

  def set_bike
    @bike = Bike.find(params[:id])
  end

end
