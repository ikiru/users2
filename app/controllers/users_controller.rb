class UsersController < ApplicationController
  before_action :auth, only: [:show]

  def new
  end

  def show
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

  def delete
    #code
  end
end
