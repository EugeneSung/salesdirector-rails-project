class AddAdminToSalesmen < ActiveRecord::Migration[5.2]
  def change
    add_column :salesmen, :admin, :boolean
  end
end
