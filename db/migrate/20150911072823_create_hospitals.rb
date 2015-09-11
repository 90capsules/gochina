class CreateHospitals < ActiveRecord::Migration
  def change
    create_table :hospitals do |t|
     
      t.string :hos_name 
      t.string :hos_address
      t.text :hos_intro
      t.timestamps null: false
    end
  end
end
