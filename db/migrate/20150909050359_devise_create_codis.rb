class DeviseCreateCodis < ActiveRecord::Migration
  def change
    create_table(:codis) do |t|
      # 백용수 Codi속성

      t.string :realname,           null: false, default: ""
      t.string :nickname,           null: false, default: ""
      t.string :phonenumber
      t.integer :hospital_id,       null: false, default: ""      
      
      
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string     :current_sign_in_ip
      t.string     :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :codis, :email,                unique: true
    add_index :codis, :reset_password_token, unique: true
    # add_index :codis, :confirmation_token,   unique: true
    # add_index :codis, :unlock_token,         unique: true
    
    # 백용수 index추가
    add_index :codis, :realname
    add_index :codis, :nickname
    add_index :codis, :phonenumber
    add_index :codis, :hospital_id

  end
end
