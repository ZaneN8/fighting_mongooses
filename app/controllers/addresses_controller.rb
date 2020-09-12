class AddressesController < ApplicationController
  before_action :set_location
  before_action :set_address, only: [:show, :edit, :update, :destroy]

  def index
    @addresses = @location.addresses
  end

  def show

  end

  def new
    @address = @location.addresses.new
    render :_form
  end

  def create
    @address = @location.addresses.new(address_params)
    if @address.save
      redirect_to location_addresses_path(@location)
    else
      render :new
    end
  end

  def edit
    render :_form
  end

  def update
    if @address.update(address_params)
      redirect_to location_addresses_path(@location)
    else
      render :_form
    end
  end

  def destroy
    # binding.pry
    @address.destroy
    redirect_to location_addresses_path(@location)
  end

  private

  def set_location
    @location = Location.find(params[:location_id])
  end

  def set_address
    @address = Address.find(params[:id])
  end

  def address_params
    params.require(:address).permit(:street, :state, :city, :country, :region, :zip, :location_id)
  end

end
