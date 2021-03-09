class DoctorsController < ApplicationController
    def index 
        @doctors = Doctor.all
        render json: @doctors
    end

    def show
        @doctor = Doctor.find(params[:id])
        render json: @doctor
    end

    def create
        @doctor = Doctor.create(doctor_params)
        render json: @doctor
    end

    def update

    end

    def delete
        @doctor = Doctor.find(params[:id])
        @doctor.destroy
        render json: @doctor
    end
    
end

private
    def doctor_params
        params.permit(:name, :pet_category, :breed, :age, :sex, :status, :cam_link, :img_url)
    end 


