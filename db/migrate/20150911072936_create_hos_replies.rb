class CreateHosReplies < ActiveRecord::Migration
  def change
    create_table :hos_replies do |t|
      
      t.string :user_id
      t.string :content
      t.string :hospital_id
      t.timestamps null: false
    end
  end
end
