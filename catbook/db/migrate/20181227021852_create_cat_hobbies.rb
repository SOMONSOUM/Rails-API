class CreateCatHobbies < ActiveRecord::Migration[5.2]
  def change
    create_table :cat_hobbies do |t|
      t.references :cat, index: true
      t.references :hubby, index: true

      t.timestamps
    end
  end
end
