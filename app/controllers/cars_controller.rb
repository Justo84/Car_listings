class CarsController < ApplicationController

  def index
    @cars = Car.all
    @manufacturer = Manufacturer.new
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      flash[:alert] = "Car added"
      redirect_to root_path
    else
      flash[:warning] = "Failed to add car"
      render :new
    end
  end

  private

  def car_params
    params.require(:car).permit(:year, :color, :mileage, :manufacturer_id, :description)
  end

end
