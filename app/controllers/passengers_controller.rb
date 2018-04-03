class PassengersController < ApplicationController
  def index
    @passenger = Passenger.all
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


  private

  def passenger_params
    return params.require(:passenger).permit(:name, :phone_num)
  end

end
