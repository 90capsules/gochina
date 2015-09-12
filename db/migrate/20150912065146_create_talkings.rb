class CreateTalkings < ActiveRecord::Migration
  def change
    create_table :talkings do |t|
      
      t.integer :user_id
      t.text :content
      t.string :file

      t.timestamps null: false
    end
  end
end
