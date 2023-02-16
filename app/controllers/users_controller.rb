class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def new
  end

  def create
    @user_create = User.new(user_params)
    
    if @user_create.save
      @user = User.find_by(email: params[:email])
      log_in(@user)
      redirect_to root_path
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

def edit
  @user = User.find(params[:id])
end

  def update
  end

  def destroy
    @user.destroy
  end

  private
  def user_params
    params.permit(:first_name, :last_name, :description, :age, :city_id, :email, :password)
  end

end
