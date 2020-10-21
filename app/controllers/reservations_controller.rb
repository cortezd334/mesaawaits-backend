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
        reservation = Reservation.create(reservation_params)
        render json: reservation
        #else render json: {error: ''}
    end

    def update
        reservation = Reservation.find(params[:id])
        reservation.update(reservation_params)
        render json: reservation
    end

    def destroy
        # byebug
        reservation = Reservation.find(params[:id])
        reservation.destroy
        render json: {error: 'Your reservation has been deleted'}
    end

    private
    def reservation_params
        params.require(:reservation).permit(:name, :date, :time, :party_size, :occasion, :notes, :restaurant_id, :user_id)
    end
end
