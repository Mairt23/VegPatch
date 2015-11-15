class ExtraTip < ActiveRecord::Base
  belongs_to :vegetable
  VEGETABLE_TYPES = Vegetable.select("name")
end
