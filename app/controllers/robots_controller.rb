class RobotsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
def index
  @robots = Robot.all
end

def show
  @robot = Robot.find(params[:id])
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

end

end
