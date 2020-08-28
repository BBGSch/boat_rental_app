class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all
    # @reservations = Reservation.all.select{|reservation| reservation.user == current_user || reservation.boat.user == current_user}
  end

  def show
    @reservation = Reservation.find(params[:id])
    @review = Review.new
  end

  def new
    @reservation = Reservation.new
    # @reservation.boat = Boat.find(params[:id])
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @reservation.save
    redirect_to reservation_path(@reservation)
  end

  # def edit
  #   @reservation = Reservation.find(params[:id])
  # end

  # def update
  #   @reservation = Reservation.find(params[:id])
  #   @reservation.update(reservation_params)
  #   redirect_to reservation_path(@reservation)
  # end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to reservations_path
  end

  def confirm
    @reservation = Reservation.find(params[:id])
    @reservation.status = true
    @reservation.save
    redirect_to reservation_path(@reservation)
    flash.notice = "Reservation confirmed"
  end

  def decline
    @reservation = Reservation.find(params[:id])
    if current_user == @reservation.boat.user
      @reservation.destroy
      redirect_to reservations_path
      flash.notice = "Reservation declined"
    else
      @reservation.destroy
      redirect_to boats_path
      flash.notice = "Reservation cancelled"
    end
  end

  def decline_show
    @reservations = Reservation.all
  end

  def confirm_show
    @reservation = Reservation.find(params[:id])
  end

  private

  def reservation_params
    params.require(:reservation).permit(:user_id, :boat_id, :start_date, :end_date, :total_price, :status)
  end

end
