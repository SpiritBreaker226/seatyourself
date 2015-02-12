class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to(restaurants_path, notice: "#{@user.first_name} #{@user.last_name} has been created")
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
      redirect_to(user_path(@user), notice: "#{@user.first_name} #{@user.last_name} has been updated")
    else
      flash.now[:alert] = "Unable to update user"
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
