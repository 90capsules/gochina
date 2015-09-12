class CreateCounsels < ActiveRecord::Migration
  def change
    create_table :counsels do |t|
      t.integer :codi_id
      t.string :status
      t.text :content
      t.integer :chat_room_id

      t.timestamps null: false
    end
  end
end
