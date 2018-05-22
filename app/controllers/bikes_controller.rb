class BikesController < ApplicationController

  def index
    if params[:location]
      @bikes = Bike.where("address iLIKE ?", "%#{params[:location]}%")
    else
      @bikes = Bike.all
    end
  end

  def show
  end

  def new
  end

  def edit
  end
end
