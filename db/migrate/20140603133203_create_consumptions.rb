class CreateConsumptions < ActiveRecord::Migration
  def change
    create_table :consumptions do |t|
      t.integer :food_item_id
      t.float :quantity
      t.boolean :waste

      t.timestamps

    end
  end
end
