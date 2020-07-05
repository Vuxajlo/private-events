class UserSessionsController < ApplicationController
 def new
 end

 def create

    user = User.find_by_name(params[:name])
    if user
          session[:user_id] = user.id
          redirect_to root_url, notice: "Logged in!"
        else
          flash.now[:alert] = "Name is invalid"
          render "new"
        end
      
 end

def destroy
  session[:user_id] = nil
  redirect_to root_url, notice: "Loged out!"

end

end
