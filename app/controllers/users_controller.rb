class UsersController < ApplicationController
    def show
        user = User.find_by(id: session[:user_id])
        if user
            render json: user, status: 200
        else
            render json: {error: "User not found"}, status: 401
        end
    end
end
