class GardenController < ApplicationController
	include CurrentAllotment
	before_action :set_allotment 
	def index
		@vegetables = Vegetable.order(:name)
	end
end
