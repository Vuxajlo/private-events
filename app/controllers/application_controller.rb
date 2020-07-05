class ApplicationController < ActionController::Base
    helper_method :current_user  
    helper_method :loged_in?
    
    def current_user
      User.find_by(id: session[:user_id])  
    end

    def loged_in?
      !current_user.nil?
    end



  
  
end

