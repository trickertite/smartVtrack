class ShareUsersTableAltered < ActiveRecord::Migration
  def change
  	remove_column :share_users, :is_active
  	add_column :share_users, :curr_stop, :integer
  	add_column :share_users, :prev_stop, :integer
  end
end
