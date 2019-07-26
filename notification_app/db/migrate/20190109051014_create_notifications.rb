class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.boolean :email_on_created
      t.boolean :eamil_on_delivery
      t.boolean :email_of_invoice

      t.timestamps
    end
  end
end
