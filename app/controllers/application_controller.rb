class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user, :require_user 

  private  
    def current_user  
      @current_user ||= User.find(session[:user_id]) if session[:user_id]  
    end

    def require_user
        unless current_user
          store_location
          flash[:warning] = "You must be logged in to access this page"
          redirect_to login_url
          return false
        end
    end
    
    def store_location
        session[:return_to] = request.fullpath
    end    



end
