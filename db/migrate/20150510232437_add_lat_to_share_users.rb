class AddLatToShareUsers < ActiveRecord::Migration
  def change
    add_column :share_users, :lat, :decimal
    add_column :share_users, :long, :decimal
  end
end
