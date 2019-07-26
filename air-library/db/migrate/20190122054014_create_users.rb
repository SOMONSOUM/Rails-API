class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :img_url
      t.string :favorite_genre
      t.text :bio
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
