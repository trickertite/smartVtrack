class Addvehicleid < ActiveRecord::Migration
  def change
  	  	add_column :share_users, :vehicle_id, :integer
  end
end
