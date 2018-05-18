class BookingsController < ApplicationController

  def index

  end

  def show

  end

  def new

  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.robot = @robot
    @booking.save

    redirect_to my_robots_path
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private
  def booking_params
    params.require(:booking).permit(:beginning_of_rental, :end_of_rental)
  end


end
