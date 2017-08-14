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
    @User.firn(params[:id])
  end

  def update
    if @user.update user_params
      redirect_to "/users/#{@user.id}"
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to "/users/#{@user.id}/edit"
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
end
