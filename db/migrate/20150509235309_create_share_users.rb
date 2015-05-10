class CreateShareUsers < ActiveRecord::Migration
  def change
    create_table :share_users do |t|
      t.integer :driver

      t.timestamps null: false
    end
  end
end
