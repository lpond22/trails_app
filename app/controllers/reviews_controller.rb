class ReviewsController < ApplicationController

  before_action :set_park
  before_action :authenticate_user!, except: [:index]

  def index
    @reviews = @park.reviews
  end

  def show
    @review = @park.reviews.find(params[:id])
  end

  def new
    @review = @park.reviews.new
  end

  def create
    @review = @park.reviews.new(review_params)
    @review.user = current_user
    if @review.save
      redirect_to park_reviews_path(@park), notice: 'Created a Review'
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :email)
  end

  def set_park
    @park = Park.find(params[:park_id])
  end
end
