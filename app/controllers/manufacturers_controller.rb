class ManufacturersController < ApplicationController

  def index
    @manufacturers = Manufacturer.all
  end

  def new
    @manufacturer = Manufacturer.new
  end

  def create
    @manufacturer = Manufacturer.new(manufacturer_params)
    if @manufacturer.save
      flash[:info] = "Manufacturer Added"
      redirect_to manufacturers_path
    else
      flash[:warning] = "Failed to add manufacturer"
      render :new
    end
  end

  private

  def manufacturer_params
    params.require(:manufacturer).permit(:name, :country)
  end

end
