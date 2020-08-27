class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = CurrentUser
    @reservation.save
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def update
    @reservation = Reservation.find(params[:id])
    @reservation.update(reservation_params)
    redirect_to reservation_path(@reservation)
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to reservation_path(reservations)
  end

  def confirm
    @reservation = Reservation.find(params[:id])
    @reservation.status = true
  end


  private

  def reservation_params
    params.require(:reservation).permit(:user_id, :boat_id, :start_date, :end_date, :total_price, :status)
  end

end
