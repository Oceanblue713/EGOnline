class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.save
  end

  def delete
  end

  private

  def category_params
    params.require(:category).permit(:category,:word_id)
  end
end
