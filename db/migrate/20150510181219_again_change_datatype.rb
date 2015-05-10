class AgainChangeDatatype < ActiveRecord::Migration
  def change
  	change_column :stops, :lat, :decimal
  	change_column :stops, :long, :decimal
  end
end
