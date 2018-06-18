class Invoice < ApplicationRecord
  belongs_to :salesman
  belongs_to :customer
  belongs_to :salesorder

  has_many :product_invoices
  has_many :products, through: :product_invoices

end
