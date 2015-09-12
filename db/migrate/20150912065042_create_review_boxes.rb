class CreateReviewBoxes < ActiveRecord::Migration
  def change
    create_table :review_boxes do |t|
      
      t.integer :review_id
      t.integer :user

      t.timestamps null: false
    end
  end
end
