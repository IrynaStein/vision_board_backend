class UsersController < ApplicationController

    def show 
        # byebug
       user = User.find_by(id: session[:user_id])
        render json: user, status: 200
    end

end
