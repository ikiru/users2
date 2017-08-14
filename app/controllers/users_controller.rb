class UsersController < ApplicationController
  before_action :auth, only: [:show]

  def new
  end

  def show
    @user = User.find(params[:id])
  end

  def create_user
    if params[:id !=nil]
      @user = User.find(params[:id])
    else
      @user = User.new(user_params)
    end
  end

  def edit
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
end
