class UserPetsController < ApplicationController
    def index 
        @userpets = UserPet.all
        render json: @userpets
    end

    def show
        @userpet = UserPet.find(params[:id])
        render json: @userpet
    end

    def create
        @userpet = UserPet.create(user_pet_params)
        render json: @userpet
    end

    def update

    end

    def delete
        @userpet = UserPet.find(params[:id])
        @userpet.destroy
        render json: @userpet
    end
    
end

private
    def user_pet_params
        params.require(:name, :pet_category, :breed, :age, :sex, :status, :cam_link, :img_url)
    end 

