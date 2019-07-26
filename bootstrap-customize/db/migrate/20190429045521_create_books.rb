class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.integer :pages, null: false
      t.date :publication_date
      t.string :publisher
      t.string :weight

      t.timestamps
    end
  end
end
