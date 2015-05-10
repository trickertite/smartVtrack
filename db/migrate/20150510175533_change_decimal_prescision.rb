class ChangeDecimalPrescision < ActiveRecord::Migration
  def change
  	change_column :stops, :lat, :decimal, :precision => 12, :scale => 8
  	change_column :stops, :long, :decimal, :precision => 12, :scale => 8
  end
end
