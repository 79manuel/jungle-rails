class Admin::CategoriesController < ApplicationController

http_basic_authenticate_with :name => ENV['ADMIN_USER_NAME'], :password => ENV['ADMIN_PASSWORD']



  def index
    @categories = Category.order(id: :desc).all
  end

  def new
    @categories = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to [:admin, :categories], notice: 'Category created!'
    else
      render :new
    end
  end

  def show
    @category = Category.find(params[:id])
    @products = @category.products.order(created_at: :desc)
  end

  def destroy
    @category = Category.find params[:id]

    @category.destroy

    redirect_to admin_categories_path, notice: 'Category deleted!'
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
