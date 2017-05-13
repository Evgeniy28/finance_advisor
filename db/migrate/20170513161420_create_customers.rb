class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :name, null: false
      t.integer :phone, null: false

      t.timestamps
    end
  end
end
