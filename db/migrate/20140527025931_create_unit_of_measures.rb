class CreateUnitOfMeasures < ActiveRecord::Migration
  def change
    create_table :unit_of_measures do |t|
      t.string :unit_of_measure

      t.timestamps

    end
  end
end
