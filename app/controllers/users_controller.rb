class UsersController < ApplicationController
    
    def show
        user = User.find(params[:id])
        render json: user
    end

    def create
        user = User.create(user_params)
        render json: user
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        render json: {error: 'Your account has been deleted'}
    end

    

    private
    def user_params
        params.require(:user).permit(:name, :username, :age, :email, :location, :password, :recovery_password)
        # params.permit(:name, :username, :age, :email, :location, :password, :recovery_password)
    end

end
