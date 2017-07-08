class ReviewsController < ApplicationController

  before_action :user_login

  def user_login
    redirect_to '/login' unless current_user
  end


  def create
    review = Review.new(review_params)
    review.user_id = current_user.id
    if review.save!
      flash[:notice] = "Review created!"
      redirect_to '/'
    else
      flash[:notice] = "Try Again"
      redirect_to '/products/product_id'
    end
  end

  def review_params
    params.require(:review).permit(:rating, :product_id, :user_id, :description)
  end

end
