class CreateProductSalesorders < ActiveRecord::Migration[5.2]
  def change
    create_table :product_salesorders do |t|
      t.integer :product_id
      t.integer :salesorder_id

      t.timestamps
    end
  end
end
