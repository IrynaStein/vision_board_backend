class UsersController < ApplicationController

    def show 
       user = User.find_by(params[:id])
        render json: user, status: 200
    end

end
