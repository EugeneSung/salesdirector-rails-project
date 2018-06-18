class CreateSalesorders < ActiveRecord::Migration[5.2]
  def change
    create_table :salesorders do |t|
      t.integer :order_number
      t.integer :salesman_id
      t.integer :customer_id
      t.string :status

      t.timestamps
    end
  end
end
