class Salesorder < ApplicationRecord
  has_many :invoices
  belongs_to :customer
  belongs_to :salesorder

  has_many :product_salesorders
  has_many :products, through: :product_salesorders


end
