class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :qty
      t.decimal :price
      t.boolean :inStock

      t.timestamps
    end
  end
end
