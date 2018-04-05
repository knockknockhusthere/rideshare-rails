class TripsController < ApplicationController
  def index
    if params[:index_trips_on_passenger_id]
      @passenger =
      Passenger.find(params[:passenger_id])
      @trips = @passenger.trips
    else
      @trips = Trip.all
    end
  end

  def new
    @trip = Trip.new
  end

  def create
    trip_attributes = {

      passenger_id: params[:passenger_id],

      driver_id: Driver.all.sample.id,

      date: Date.today,

      rating: nil,

      cost: rand(100...10000)
    }

    trip = Trip.new(trip_attributes)


    if trip.save
      redirect_to trips_path
    end
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

  def trip_params
    return params.require(:trip).permit(:date, :rating, :cost, :driver_id, :passenger_id)
  end

end
