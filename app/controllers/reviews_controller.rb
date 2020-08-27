class ReviewsController < ApplicationController
  def index
    @reviews = @boats.id
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    # @review.reservation = params[:id]
    raise
  end

  private

  def review_params
    params.require(:review).permit(:comment, :star, :boat_id)
  end
end
