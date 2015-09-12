class CreateChatRooms < ActiveRecord::Migration
  def change
    create_table :chat_rooms do |t|
      
      t.integer :user_id
      t.integer :codi_id
      t.integer :counsel_id

      t.timestamps null: false
    end
  end
end
