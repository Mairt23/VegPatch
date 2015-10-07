class CreateVegetables < ActiveRecord::Migration
  def change
    create_table :vegetables do |t|
      t.string :name
      t.text :instructions
      t.text, :description
      t.text, :tips
      t.decimal :easiness_to_grow_rating

      t.timestamps null: false
    end
  end
end
