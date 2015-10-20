class Vegetable < ActiveRecord::Base
	before_destroy :ensure_not_referenced_by_any_line_item
	has_many :line_items
	validates :name, :instructions, :description, :image_url, presence: true
	validates :name, uniqueness: true
	validates :name, length: {minimum: 2}
	validates :easiness_to_grow_rating, numericality: {greater_than_or_equal_to: 0}
	validates :easiness_to_grow_rating, numericality: {less_than_or_equal_to: 10}
	private

	# ensure that there are no line items referencing this product
	def ensure_not_referenced_by_any_line_item
		if line_items.empty?
			return true
		else
			errors.add(:base, 'Line Items present')
			return false
		end
	end
end
