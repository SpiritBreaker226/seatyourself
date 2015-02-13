class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :time
      t.belongs_to :restaurant, index: true
      t.belongs_to :user, index: true
      t.integer :party_size

      t.timestamps null: false
    end
    add_foreign_key :reservations, :restaurants
    add_foreign_key :reservations, :users
  end
end
