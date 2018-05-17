class BookingsController < ApplicationController

  def index

  end

  def show

  end

  def new

  end

  def create
    @booking = Booking.new(robot_id: params["robot_id"], user_id: params["user_id"])
    @booking.save

    redirect_to profile_path
  end

  def edit

  end

  def update

  end

  def destroy

  end


end
