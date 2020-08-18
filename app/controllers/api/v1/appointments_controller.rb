class Api::V1::AppointmentsController < ApplicationController

    def index
        @appointments = Appointment.all
        render json: @appointments
    end

    def show
        @appointment = Appointment.find(params[:id])
        render json: @appointment
    end

    def new
        @appointment = Appointment.new
    end

    def create
        # byebug
        @appointment = Appointment.create(check_params)
        
        if @appointment.valid?
            render json: @appointment
        else
            render json: {errors: @appointment.errors.full_messages}
        end
        
    end

    def update
        @appointment = Appointment.find(params[:id])
        @appointment.update(check_params)
              # check_params represent the data from the front-end
        if @appointment.valid?
            render json: @appointment
        else
            render json: {errors: @appointment.errors.full_messages}
        end
    end

    def destroy
        appointment = Appointment.find(params[:id])
        appointment.destroy

        render json: appointment
    end


    private

    def check_params
        params.permit(:address, :time, :treatment_id, :user_id)
            # The check_params method is permitting the keys ':address, :time, :client_id, :treatment_id' whenever a PATCH request is made.
    end
    
end
