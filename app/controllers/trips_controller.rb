class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy]
  
  def index
    @trips = current_user.trips
  end
  
    def show
      
    end

  def new
    @trip = Trip.new
  end

  def create
    @trip = current_user.trips.new(trips_params)
    if @trip.save
      redirect_to trips_path
    else
      render :new
    end
  end

  def edit
    
  end

  def update 

    if @trip.update(trips_params)
      redirect_to trips_path
    else 
      render :update
    end
  end

  def destroy
    @trip.destroy
    redirect_to trips_path # change to root_path? Takes you to the first page when deleted
  end

  private

  def trips_params
    params.require(:trip).permit(:name)
  end

  def set_trip
  @trip = current_user.trips.find(params[:id])
  end
end
