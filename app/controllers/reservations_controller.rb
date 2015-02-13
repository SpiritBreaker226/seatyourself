class ReservationsController < ApplicationController
  before_filter :ensure_logged_in, except: [:show]
  before_filter :find_restaurant

  def index
    @reservations = @restaurant.reservations
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @reservation.restaurant = @restaurant

    if @reservation.save
      redirect_to @restaurant, notice: "You've created a reservation!"
    else
      flash.now[:alert] = "Something went wrong."
      render :new
    end
  end

  # To Do: Create user edit view for reservations
  # def update
  #   @reservation = Reservation.find(params[:id])

  #   if @reservation.update_attributes(restaurant_params)
  #     redirect_to restaurants_path(@restaurant)
  #   else
  #     render :edit
  #   end    
  # end

  # def destroy
  #   @reservation = Reservation.find(params[:id])
  #   reservation.destroy
  #   redirect_to restaurants_path
  # end

  private
  def reservation_params
    params.require(:reservation).permit(:time, :restaurant_id, :user_id, :party_size)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

end
