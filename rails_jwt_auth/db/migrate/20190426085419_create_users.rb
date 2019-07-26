class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :phone_number, null: false
      t.string :roles, default: [], array: true, index: { using: :gin }
      t.string :avatar_url
      
      ## Database authenticatable
      t.string :email, null: false, default: ""
      t.string :password_digest, null: false, default: ""
      t.string :auth_tokens

      ## Confirmable
      t.string :unconfirmed_email
      t.string :confirmation_token
      t.datetime :confirmation_sent_at
      t.datetime :confirmed_at

      ## Recoverable
      t.string :reset_password_token
      t.datetime :reset_password_sent_at

      ## Trackable
      t.string :last_sign_in_ip
      t.datetime :last_sign_in_at

      ## Invitable
      t.string :invitation_token
      t.datetime :invitation_sent_at
      t.datetime :invitation_accepted_at
      t.datetime :invitation_created_at

      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :phone_number,         unique: true
    add_index :users, :reset_password_token, unique: true
    add_index :users, :confirmation_token,   unique: true
  end
end
