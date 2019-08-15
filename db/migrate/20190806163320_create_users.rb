class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :password_digest
      t.string :phone_number
      t.string :address
      t.string :address_longtitude
      t.string :address_latitude
      t.timestamps
    end
  end
end
