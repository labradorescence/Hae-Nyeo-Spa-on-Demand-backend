class Api::V1::UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def new
        @user = user.new
    end
    
    def create
        @user = User.create(check_params)
        if @user.valid?
            render json: @user
        else
            render json: {errors: @user.errors.fullmessages}
        end
    end

    def update
        @user = User.find(params[:id])
        @user.update(check_params)
        # check_params represent the data from the front-end
        if @user.valid?
            render json: @user
        else
            render json: {errors: @user.erros.full_messages}
        end
    end

    def destroy
        user = User.find(params[:id])
        user.destory

        render json: quote
    end
    
    private

    def check_params
        params.permit(:name, :email, :address, :phone, :gender, :birthday, :new_client, :note)
        # The check_params method is permitting the keys ':name, :producer, :ingredient, :type, :region, :country, :price, :rating,  and  :note' whenever a PATCH request is made.
    end

end
