class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      
      t.integer :user_id
      t.integer :requesting_id
      t.integer :hospital_id
      t.string :img
      t.text :content

      t.timestamps null: false
    end
  end
end
