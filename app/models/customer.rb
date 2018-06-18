class Customer < ApplicationRecord
  belongs_to :salesman
  has_many :salesorders
  has_many :invoices
end
