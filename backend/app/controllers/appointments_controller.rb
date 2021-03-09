class AppointmentsController < ApplicationController
    def index 
        @appointments = Appointment.all
        render json: @appointments
    end

    def show
        @appointment = Appointment.find(params[:id])
        render json: @appointment
    end

    def create
        @appointment = Appointment.create(appointment_params)
        render json: @appointment
    end

    def update

    end

    def delete
        @appointment = Appointment.find(params[:id])
        @appointment.destroy
        render json: @appointment
    end
    
end

private
    def appointment_params
        params.permit(:name, :pet_category, :breed, :age, :sex, :status, :cam_link, :img_url)
    end 


