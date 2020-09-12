class LocationsController < ApplicationController
  before_action :set_trip , only: [:index, :show, :new, :create, :destroy]
  before_action :set_location, only: [:show, :edit, :update, :destroy]

  
  def index
    @locations = @trip.locations
  end

  def show
  end

  def new
    @location = @trip.locations.new
  end

  def create
    @location = @trip.locations.new(location_params)
    if @location.save
      redirect_to trip_locations_path
    else
      render :new
    end
  end


  def edit
    # render partial: "locations/form"
  end

  def update
    if @location.update(location_params)
      redirect_to trip_locations_path @location.trip
    else
      render :edit
    end
  end

  def destroy
    @location.destroy
    redirect_to trip_locations_path
  end

  

  private

  def set_location
    @location = Location.find(params[:id])
  end

  def set_trip
    @trip = current_user.trips.find(params[:trip_id])
  end

  def location_params
    params.require(:location).permit(:name, :trip_id)
  end

end






