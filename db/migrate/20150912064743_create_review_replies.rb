class CreateReviewReplies < ActiveRecord::Migration
  def change
    create_table :review_replies do |t|
      
      t.string :nickname
      t.string :content
      t.integer :review_id

      t.timestamps null: false
    end
  end
end
