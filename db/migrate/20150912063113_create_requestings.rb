class CreateRequestings < ActiveRecord::Migration
  def change
    create_table :requestings do |t|
      
      t.integer :user_id
      t.string :priority
      t.string :img
      t.string :prefer_img
      t.datetime :want_time
      t.string :prefer_region
      t.text :special
      t.string :switch, default: "on"
      
      t.timestamps null: false
    end
  end
end
