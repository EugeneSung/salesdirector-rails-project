class Salesman < ApplicationRecord
  has_many :customers
  has_many :salesorders
  has_many :invoices
end
