class CreateRequestings < ActiveRecord::Migration
  def change
    create_table :requestings do |t|
      
      t.integer :user_id
      t.string :img_front
      t.string :img_left
      t.string :img_right
      t.string :prefer_img
      t.datetime :want_time
      t.string :prefer_region
      t.string :desire_cost
      t.string :switch, default: "on"
      t.string :sleep_time
      t.string :drug_sideeffect
      
      
      t.timestamps null: false
    end
  end
end
