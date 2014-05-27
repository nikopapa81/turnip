class CreateFoodItems < ActiveRecord::Migration
  def change
    create_table :food_items do |t|
      t.string :food_item
      t.integer :food_category_id
      t.integer :unit_of_measure_id
      t.integer :average_expiration_days

      t.timestamps

    end
  end
end
