module SessionsHelper
    def current_user
        User.find_by(id: session[:user_id])
    end

    def log_in(user)
        session[:user_id] = user.id
    end

    def log_out(user)
        session.delete(:user_id)
        redirect_to root_path
    end
end
