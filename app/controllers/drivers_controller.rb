class DriversController < ApplicationController
  def index
    @driver = Driver.all
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

  def driver_params
    return params.require(:driver).permit(:name, :vin)
  end
end
