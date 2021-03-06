class UsersController < ApplicationController
    def new
    @user = User.new
    end

    def create 
        @user = User.new(user_params)
        if @user.save
            redirect_to user_path(@user)
        else 
            render action: :new
        end 
    end

    def show
        @user = User.find_by(params[:id])
       end

    def index
        @users = User.all
    end


    private
    def user_params
        params.require(:user).permit(:name)
       end

       
end
