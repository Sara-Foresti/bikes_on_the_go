class BikesController < ApplicationController

  def index
    @bikes = Bike.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
