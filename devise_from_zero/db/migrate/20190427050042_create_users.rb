class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :roles, default: [], array: true, index: { using: :gin }
      t.string :avatar_url

      ## Database authenticatable
      t.string :email, null: false, default: ""
      t.string :password_digest, null: false, default: ""

      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
  end
end
