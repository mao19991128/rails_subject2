class RoomsController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
end

private
  def room_params
    params.require(:room).permit(:name, :introduce, :image, :fee, :created_at, :address, :detail)
  end
