class BikesController < ApplicationController

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
