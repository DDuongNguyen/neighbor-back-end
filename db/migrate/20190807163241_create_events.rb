class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :user_id
      t.string :name
      t.string :description
      t.datetime :time
      t.timestamps
    end
  end
end
