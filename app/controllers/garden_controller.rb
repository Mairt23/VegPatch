class GardenController < ApplicationController
  def index
	@vegetables = Vegetable.order(:name)
  end
end
