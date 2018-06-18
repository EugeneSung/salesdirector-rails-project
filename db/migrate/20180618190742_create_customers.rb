class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :customer_number
      t.string :address
      t.string :phone_number
      t.integer :salesman_id
      t.string :status

      t.timestamps
    end
  end
end
