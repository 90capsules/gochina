class CreateCounsels < ActiveRecord::Migration
  def change
    create_table :counsels do |t|
      
      t.integer :user_id
      t.integer :codi_id
      t.string :status

      t.timestamps null: false
    end
  end
end
