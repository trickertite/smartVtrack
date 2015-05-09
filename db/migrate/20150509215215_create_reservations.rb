class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :passenger_stop
      t.integer :is_alert

      t.timestamps null: false
    end
  end
end
