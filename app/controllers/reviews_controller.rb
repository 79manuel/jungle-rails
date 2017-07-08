class ReviewsController < ApplicationController

  before_action :login_required

  def login_required
    redirect_to '/login' unless current_user
  end

  def create
    @review = Reviews.new(review_params)
    @review.product_id = params[:product_id]
    @review.user_id = current_user.id

    if @review.save
      redirect_to @review.product, notice: 'Review was successfully created.'
    else
      p @review.errors
      redirect_to @review.product, notice: 'Failed to create the review'
    end
  end

  def destroy
    @product = Product.find (params[:product_id])
    @reviewed = Reviews.find (params[:id])
    @reviewed.destroy
    redirect_to @product, notice: 'Review was successfully deleted.'
  end

  private

  def review_params
    params.require(:review).permit(:description, :rating)
  end
end
