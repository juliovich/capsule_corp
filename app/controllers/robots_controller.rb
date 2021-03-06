class RobotsController < ApplicationController

def index
  if params[:query].present?
      @robots = Robot.where(functions: params[:query])
  else
      @robots = Robot.all
  end
end

def show
  @robot = Robot.find(params[:id])
  @booking = Booking.new
end

def new
  @robot = Robot.new

end

def create
  @robot = Robot.new(name: params[:name], functions: params[:functions], caracteristics: params[:caracteristics], price: params[:price])
  @robot.save
end

def edit

end

def update

end

def destroy
  @robot = Robot.find(params[:id])
  @robot.destroy
end

end
