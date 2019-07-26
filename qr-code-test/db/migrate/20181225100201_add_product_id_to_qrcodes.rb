class AddProductIdToQrcodes < ActiveRecord::Migration[5.2]
  def change
    add_column :qrcodes, :product_id, :integer
  end
end
