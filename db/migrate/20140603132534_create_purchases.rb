class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :food_item_id
      t.float :quantity
      t.float :cost
      t.string :source
      t.date :expiration_date

      t.timestamps

    end
  end
end
