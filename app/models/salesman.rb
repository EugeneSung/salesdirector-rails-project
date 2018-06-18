class Salesman < ApplicationRecord
  has_many :customers
  has_many :salesorders
  has_many :invoices

  has_secure_password
  validates :name, :password, presence: true
end
