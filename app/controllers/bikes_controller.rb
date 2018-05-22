class BikesController < ApplicationController

  def index
    @bikes = Bike.all
  end

  def show
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    if @bike.save!
      redirect_to bikes_path
    else
      render :new
    end
  end

  def edit
  end

  private

  def bike_params
    params.require(:bike).permit(:name, :description, :size, :type, :price, :address)
  end

end
