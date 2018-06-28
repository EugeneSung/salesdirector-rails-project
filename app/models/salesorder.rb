class Salesorder < ApplicationRecord
  has_many :invoices
  belongs_to :customer
  belongs_to :salesman
  has_many :orders


  validates :order_number, :salesman_id, :customer_id, presence: true
  validates :order_number, uniqueness: true
  accepts_nested_attributes_for :orders, :allow_destroy => true
end
