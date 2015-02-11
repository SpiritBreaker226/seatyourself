class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :time
      t.belongs_to :restaurant_id, index: true
      t.belongs_to :user_id, index: true
      t.integer :party_size

      t.timestamps null: false
    end
    add_foreign_key :reservations, :restaurant_ids
    add_foreign_key :reservations, :user_ids
  end
end
