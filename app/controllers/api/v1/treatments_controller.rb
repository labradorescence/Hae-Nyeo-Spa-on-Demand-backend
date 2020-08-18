class Api::V1::TreatmentsController < ApplicationController

    def index
        @treatments = Treatment.all
        render json: @treatments
    end

    def show
        @treatment = Treatment.find(params[:id])
        render json: @treatment
    end

    def new
        @treatment = treatment.new
    end
    
    def create

        @treatment = treatment.create(check_params)
        if @treatment.valid?
            render json: @treatment
        else
            render json: {errors: @treatment.errors.fullmessages}
        end
        
    end

    def update
        @treatment = Treatment.find(params[:id])
        @treatment.update(check_params) 
        # check_params represent the data from the front-end
        if @treatment.valid?
            render json: @treatment
        else
            render json: {errors: @treatment.erros.full_messages}
        end
    end

    def destroy

        treatment = Treatment.find(params[:id])
        treatment.destory

        render json: quote
    end
    
    private

    def check_params
        params.permit(:title, :price, :duration, :description, :image, :video, :lat, :lng)
        # The check_params method is permitting the keys ':name, :producer, :ingredient, :type, :region, :country, :price, :rating,  and  :note' whenever a PATCH request is made.
    end


end
