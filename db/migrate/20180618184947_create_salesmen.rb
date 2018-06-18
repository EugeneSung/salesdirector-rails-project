class CreateSalesmen < ActiveRecord::Migration[5.2]
  def change
    create_table :salesmen do |t|
      t.string :title
      t.string :phone_number
      t.string :status
      t.string :hired_date
      t.integer :emp_id
      t.string :name

      t.timestamps
    end
  end
end
