class AddPasswordAndPasswordDigesttToSalesman < ActiveRecord::Migration[5.2]
  def change
    add_column :salesmen, :password, :string
    add_column :salesmen, :password_digest, :string
  end
end
