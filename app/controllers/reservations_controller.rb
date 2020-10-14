class ReservationsController < ApplicationController

    before_action :authorized, only: [:create]

    def index
        reservations = Reservation.all
        render json: reservations
    end

    def show
        reservation = Reservation.find(params[:id])
        render json: reservation
    end

    def create
        # if User and Restaurant make res
        # reservation = Reservation.create(reservation_params)
        reservation = Reservation.create(date: params[:date], party_size: params[:partySize], special_occasion: params[:occasion], notes: params[:notes], restaurant_id: 1, user_id: @user.id)
        render json: reservation
        #else render json: {error: ''}
    end
    #name and time are not included cuz not in db

    def update
        reservation = Reservation.find(params[:id])
        reservation.update(reservation_params)
        render json: reservation
    end

    def destroy
        reservation = Reservation.find(params[:id])
        reservation.destroy
        render json: {error: 'Your account has been deleted'}
    end

    private
    def reservation_params
        params.require(:reservation).permit(:date, :party_size, :special_occasion, :notes, :restaurant_id, :user_id)
    end
end
