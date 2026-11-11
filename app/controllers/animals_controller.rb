class AnimalsController < ApplicationController
  def index
    @animals = Animal.includes(:category)
  end
end
