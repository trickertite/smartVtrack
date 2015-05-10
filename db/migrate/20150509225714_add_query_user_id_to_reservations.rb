class AddQueryUserIdToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :query_user_id, :integer
  end
end
