class RestaurantsController < ApplicationController
  before_filter :ensure_logged_in, except: [:show, :index]
  before_filter :create_reservation
  before_filter :load_reservations

  def index
    @restaurants = Restaurant.all 
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new 
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to restaurants_path, :notice => "Restaurant created!"   
    else
      flash.now[:alert] = "Could not save! Ensure all fields are completed."
      render :new
    end
  end

  def update
    @restaurant = Restaurant.find(params[:id])

    if @restaurant.update_attributes(restaurant_params)
      redirect_to restaurant_path(@restaurant)
    else
      render :edit
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy 
    redirect_to restaurants_path 
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :description, :capacity, :hours_open, :hours_closed)    
  end

  def create_reservation
    @reservation = Reservation.new
  end

  def load_reservations
  end

end






