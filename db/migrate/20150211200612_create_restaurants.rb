class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :address
      t.text :description
      t.integer :capacity
      t.time :hours_open
      t.time :hours_closed

      t.timestamps null: false
    end
  end
end
