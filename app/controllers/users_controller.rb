class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def new 
        @user = User.new
    end 

    def create 
        # byebug
        @user = User.create(user_params(:user_name, :password))
        redirect_to users_path
    end 

    #show one thing at a time use find 
    def show 
        @user = User.find(params[:id])
    end 

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to users_path #change this to sign up page 
    end 
    
    def edit 
        @user = User.find(params[:id])
    end 

    def update 
        @user = User.find(params[:id])
        @user.update(user_params(:user_name, :password))
        redirect_to user_path(@user) #modify if needed
    end 

    private 
    def user_params(*args) 
        params.require(:user).permit(*args)
    end 
end
