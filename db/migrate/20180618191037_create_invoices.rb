class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.integer :invoice_number
      t.integer :salesman_id
      t.integer :customer_id
      t.integer :salesorder_id
      t.string :status

      t.timestamps
    end
  end
end
