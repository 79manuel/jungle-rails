class ReviewsController < ApplicationController

  before_action :user_login

  def user_login
    redirect_to '/login' unless current_user
  end


  def create
    review = Review.new(review_params)
    review.user_id = current_user.id
    id = review.product_id
    if review.save!
      redirect_to product_path(id), notice: "Review created!"
    else
      redirect_to product_path(id), notice: "Try Again"
    end
  end

  def review_params
    params.require(:review).permit(:rating, :product_id, :user_id, :description)
  end

  def destroy
    @review = Review.find params[:id]
    id = @review.product_id
    @review.destroy
    redirect_to product_path(id), notice: 'Review deleted!'
  end


end
