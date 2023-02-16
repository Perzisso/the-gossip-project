class SessionsController < ApplicationController
  def new
    # afficher la page de login
  end

  def create
    # cherche s'il existe un utilisateur en base avec l’e-mail
    user = User.find_by(email: params[:email])
    puts params[:email]
    # on vérifie si l'utilisateur existe bien ET si on arrive à l'authentifier (méthode bcrypt) avec le mot de passe 
    if user.email == params[:email] && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
    
  def destroy
    log_out
    redirect_to sessions_path

  end

  private
    def user_params
      params.require(:user).permit(:email, :password)
    end

end