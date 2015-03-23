class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.integer :year, null: false
      t.string :color, null: false
      t.integer :mileage, null: false
      t.integer :manufacturer_id, null: false
      t.text :description

      t.timestamps null: false
    end
  end
end
