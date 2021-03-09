class UsersController < ApplicationController
    def index 
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def create
        @user = User.create(user_params)
        render json: @user
    end

    def update

    end

    def delete
        @user = User.find(params[:id])
        @User.destroy
        render json: @user
    end
    
end

private
    def user_params
        params.permit(:username, :name, :breed, :birthday, :email, :phone, :img_url, :password)
    end 

