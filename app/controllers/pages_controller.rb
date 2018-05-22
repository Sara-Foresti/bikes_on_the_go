class PagesController < ApplicationController
  def home
  end

  def dashboard
    @bookings = current_user.bookings
    @bikes = current_user.bikes
  end

end
