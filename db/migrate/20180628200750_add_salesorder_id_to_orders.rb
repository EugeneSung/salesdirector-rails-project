class AddSalesorderIdToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :salesorder_id, :integer
  end
end
