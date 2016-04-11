class ReviewsController < ApplicationController

  before_action :set_trail
  before_action :authenticate_user!, except: [:index]

  def index
    @reviews = @trail.reviews
  end

  def show
    @review = @trail.reviews.find(params[:id])
  end

  def new
    @review = @trail.reviews.new
  end

  def create
    @review = @trail.reviews.new(review_params)
    @review.user = current_user
    if @review.save
      redirect_to trail_reviews_path(@trail), notice: 'Created a Review'
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :email)
  end

  def set_park
    @trail = Trail.find(params[:trail_id])
  end
end
