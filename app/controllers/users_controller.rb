class UsersController < ApplicationController
  def index
  end

  def show
    
  end

  def new
  end

  def create
    @user_create = User.new(user_params)
    if @user_create.save
        @user = User.last
        @user.authenticate(params[:password])
        redirect_to root_path
    else
      puts "Pas marché !"
        render :new, status: :unprocessable_entity
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
