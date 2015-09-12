class CreateTalkingReplies < ActiveRecord::Migration
  def change
    create_table :talking_replies do |t|
      
      t.string :nickname
      t.string :content

      t.timestamps null: false
    end
  end
end
