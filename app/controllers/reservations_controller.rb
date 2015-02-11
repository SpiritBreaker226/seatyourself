class ReservationsController < ApplicationController
  def index
    @reservations = Reservations.all
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      redirect_to restaurant_url(@restaurant(params[:id])), notice: "You've created a reservation!"
    else
      flash.now[:alert] = "Something went wrong."
      render :new
    end
  end

  def edit
  end

  def destroy
  end

  private
  def reservation_params
    params.require(:reservation).permit(:time, :restaurant_id, :user_id, :party_size)
  end
end
