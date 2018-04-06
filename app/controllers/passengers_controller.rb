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
    @passenger = Passenger.find(passenger)
    @trips = Trip.all
  end

  def edit
    passenger = params[:id]
    @passenger = Passenger.find(passenger)
  end

  def update
    passenger = Passenger.find(params[:id])
    passenger.assign_attributes(passenger_params)

    if passenger.save
      redirect_to passenger_path(passenger)
    end
  end

  def destroy
    passenger = Passenger.find_by(id: params[:id])
    passenger.trips.delete_all

    if passenger
      passenger.destroy
    end

    redirect_to passengers_path
  end

  def request_trip


  end


  private

  def passenger_params
    return params.require(:passenger).permit(:name, :phone_num)
  end

end
