class AnimalsController < ApplicationController
  def index
    @animals = Animal.includes(:category)
    if params[:category_id].present?
      @animals = @animals.where(category_id: params[:category_id])
    end
    @categories = Category.all
  end

  def show
    @animal = Animal.find(params[:id])
  end
end
