class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
    @reservation = Reservation.find(params[:reservation_id])
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @reservation = Reservation.find(params[:reservation_id])
    @review.reservation = @reservation
    if @review.save
      redirect_to boat_path(@reservation.boat)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:description, :title, :stars, :user_id, :reservation_id)
  end


end
