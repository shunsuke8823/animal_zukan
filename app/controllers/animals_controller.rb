class AnimalsController < ApplicationController
  def index
    @animals = Animal.includes(:category)
  end

  def show
    @animal = Animal.find(params[:id])
  end
end
