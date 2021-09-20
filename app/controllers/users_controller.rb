class UsersController < ApplicationController
before_action :authorize, except: :create

    def show 
        # byebug
       user = User.find_by(id: session[:user_id])
        render json: user, status: 200
    end

    def create 
        user = User.create!(user_params)
        session[:user_id] = user.id
        render json: user, status: 200
    end

    private 

    def user_params 
        params.permit(:name, :username, :password, :password_confirmation, :email)
    end

end
