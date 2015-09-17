class CreateRequestingContents < ActiveRecord::Migration
  def change
    create_table :requesting_contents do |t|
      
      t.string :part
      t.text :content
      t.integer :requesting_id

      t.timestamps null: false
    end
  end
end
