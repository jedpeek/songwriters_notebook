class UsersController < ApplicationController
  def index
    @user = User.new
  end

  def login
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to user_path(@user)
  end


  def show
    @user = User.find_by_id(params[:id])
  end

  private

  def user_params
     params.require(:user).permit(:username, :email, :password)
   end
end
