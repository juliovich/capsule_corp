class BookingsController < ApplicationController

  def index

  end

  def show

  end

  def new

  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user
    @booking.save

    redirect_to profile_path
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private



end
