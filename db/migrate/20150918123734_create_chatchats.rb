class CreateChatchats < ActiveRecord::Migration
  def change
    create_table :chatchats do |t|

      t.string :content
      t.timestamps null: false
    end
  end
end
