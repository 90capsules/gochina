class CreateCounselContents < ActiveRecord::Migration
  def change
    create_table :counsel_contents do |t|
      
      t.string :part
      t.text :content
      t.integer :counsel_id
      
      t.timestamps null: false
    end
  end
end
