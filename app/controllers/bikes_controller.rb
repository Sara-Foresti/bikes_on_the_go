class BikesController < ApplicationController

  def index
    @bikes = Bike.all
  end

  def show
  end

  def new
    @bike = Bike.new
  end

  def edit
  end
end
