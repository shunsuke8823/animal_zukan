class AnimalsController < ApplicationController
  def index
    if params[:category_id].present?
      @animals = Animal.includes(:category).where(category_id: params[:category_id])
    else
      @animals = Animal.includes(:category)
    end
    @categories = Category.all
  end

  def show
    @animal = Animal.find(params[:id])
  end
end
