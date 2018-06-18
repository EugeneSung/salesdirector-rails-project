class AddTotalToSalesorders < ActiveRecord::Migration[5.2]
  def change
    add_column :salesorders, :total, :integer
  end
end
