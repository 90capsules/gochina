class CreateChatContents < ActiveRecord::Migration
  def change
    create_table :chat_contents do |t|
      
      t.string :realname
      t.string :content
      t.integer :chat_room_id 

      t.timestamps null: false
    end
  end
end
