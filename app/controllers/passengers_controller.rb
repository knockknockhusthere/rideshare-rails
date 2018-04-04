class PassengersController < ApplicationController
  def index
    @passengers = Passenger.all
  end

  def new
    @passenger = Passenger.new
  end

  def create
    passenger = Passenger.new(passenger_params)

    if passenger.save
      redirect_to passengers_path
    end
  end

  def show
    passenger = params[:id]
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
