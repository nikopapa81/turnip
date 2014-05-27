class CreateActivityLines < ActiveRecord::Migration
  def change
    create_table :activity_lines do |t|
      t.integer :food_category_id
      t.integer :food_item_id
      t.integer :unit_of_measure_id
      t.integer :activity_id
      t.float :quantity
      t.float :cost_of_purchase
      t.text :source_of_purchase
      t.date :expiration_date
      t.text :notes

      t.timestamps

    end
  end
end
