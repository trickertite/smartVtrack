class CreateQueryUsers < ActiveRecord::Migration
  def change
    create_table :query_users do |t|
      t.string :name
      t.string :password
      t.string :email
      t.string :mobile

      t.timestamps null: false
    end
  end
end
