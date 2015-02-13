class UsersController < ApplicationController
  before_filter :find_reservations

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to(restaurants_path, notice: "#{@user.name} has been created")
    else
      flash.now[:alert] = "Unable to create user"
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    # TODO: allow blank passwords fro update
    # if params[:user][:password].empty? && params[:user][:password_confirmation].empty?
    #   params[:user].delete(:password)
    #   params[:user].delete(:password_confirmation)
    # end

    if @user.update_attributes(user_params)
      redirect_to(user_path(@user), notice: "#{@user.name} has been updated")
    else
      flash.now[:alert] = "Unable to update user"
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to(restaurants_path, notice: "#{@user.name} has been created")
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  def find_reservations
    @reservations = User.find(params[:id]).reservations
  end
end
