class UsersController < ApplicationController
    def index
        @user= User.all
    end

    def new 
        @user = User.new
    end 

    def create 
        # byebug
        @user = User.create(user_params(:user_name, :password))
        redirect_to restaurants_path
    end 

    #show one thing at a time use find 
    def show 
        @user = User.find(params[:id])
    end 

    private 
    def user_params(*args) 
        params.require(:user).permit(*args)
    end 
end
