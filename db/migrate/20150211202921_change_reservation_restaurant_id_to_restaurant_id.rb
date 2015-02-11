class ChangeReservationRestaurantIdToRestaurantId < ActiveRecord::Migration
  def change
  	rename_column :reservations, :restaurant_id_id, :restaurant_id
  	rename_column :reservations, :user_id_id, :user_id
  end
end
