class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.string :name
      t.decimal :lat
      t.decimal :long

      t.timestamps null: false
    end
  end
end
