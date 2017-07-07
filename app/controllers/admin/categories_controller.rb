class Admin::CategoriesController < ApplicationController

http_basic_authenticate_with :name => ENV['ADMIN_USER_NAME'], :password => ENV['ADMIN_PASSWORD']



  def index
    @categories = Category.order(id: :desc).all
  end

  def new
    @categories = Category.new
  end

  def create
  end
end
