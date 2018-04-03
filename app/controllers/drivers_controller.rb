class DriversController < ApplicationController
  def index
    @driver = Driver.all
  end

  def new
    @driver = Driver.new
  end

  def create
    driver = Driver.new(driver_params)

    if driver.save
      redirect_to drivers_path
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

  def driver_params
    return params.require(:driver).permit(:name, :vin)
  end
end
