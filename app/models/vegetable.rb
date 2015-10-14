class Vegetable < ActiveRecord::Base
	validates :name, :instructions, :description, :image_url, presence: true
	validates :name, uniqueness: true
	validates :easiness_to_grow_rating, numericality: {greater_than_or_equal_to: 0}
	validates :easiness_to_grow_rating, numericality: {less_than_or_equal_to: 10}
end
