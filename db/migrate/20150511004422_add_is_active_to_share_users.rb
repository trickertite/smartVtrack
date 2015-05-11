class AddIsActiveToShareUsers < ActiveRecord::Migration
  def change
    add_column :share_users, :is_active, :integer
  end
end
