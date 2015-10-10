class AddImageToVegetables < ActiveRecord::Migration
  def change
    add_column :vegetables, :image_url, :string
    add_column :vegetables, :string, :string
  end
end
