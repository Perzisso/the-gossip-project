class UsersController < ApplicationController
  def index
  end

  def show
    @user_id = User.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
