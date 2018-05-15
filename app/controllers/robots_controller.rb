class RobotsController < ApplicationController

def index
  @robots = Robot.all
end

def show
  @robot = Robot.find(params[:id])
end

def new

end

def create

end

def edit

end

def update

end

def destroy

end

end
