class Product < ApplicationRecord
  has_many :product_invoices
  has_many :invoices, through: :product_orders

  has_many :product_salesorders
  has_many :salesorders, through: :product_salesorders


end
