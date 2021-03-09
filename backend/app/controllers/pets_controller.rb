class PetsController < ApplicationController
    def index 
        @pets = Pet.all
        render json: @pets
    end

    def show
        @pet = Pet.find(params[:id])
        render json: @pet
    end

    def create
        @pet = Pet.create(pet_params)
        render json: @pet
    end

    def update

    end

    def delete
        @pet = Pet.find(params[:id])
        @pet.destroy
        render json: @pet
    end
    
end

private
    def pet_params
        params.permit(:name, :pet_category, :breed, :age, :sex, :status, :cam_link, :img_url)
    end 

