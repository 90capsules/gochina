class CreateHosReplies < ActiveRecord::Migration
  def change
    create_table :hos_replies do |t|
      
      t.integer :user_id
      t.text :content
      t.integer :hospital_id
      t.integer :hos_score
      t.timestamps null: false
    end
  end
end
