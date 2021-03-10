class PlaydatesController < ApplicationController

    before_action :logged_in?
    def index 
        @playdates = Playdate.all
        render json: @playdates
    end

    def show
        @playdate = Playdate.find(params[:id])
        render json: @playdate
    end

    def create
        @playdate = Playdate.create(playdate_params)
        render json: @playdate
    end

    def update
        @playdate = Playdate.find(params[:id])
        @playdate.update(playdate_params)
        render json: @playdate
    end

    def destroy
        @playdate = Playdate.find(params[:id])
        @playdate.destroy
        render json: @playdate
    end
    
end

private
    def playdate_params
        params.permit(:user_id, :pet_id, :date, :time, :location)
    end 


