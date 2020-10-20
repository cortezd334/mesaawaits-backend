class AuthController < ApplicationController

    skip_before_action :authorized, only: [:login]
    
    def login
        user = User.find_by(username:params[:username])
        
        if user && user.authenticate(params[:password])
            token = encode_token(user_id: user.id)
            # render json: {user: user, token: token}
            render json: {user: UserSerializer.new(user), token: token}
        else
            render json: {error: 'Wrong username and/or password'}
        end
    end
end