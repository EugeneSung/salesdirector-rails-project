class Customer < ApplicationRecord
  belongs_to :salesman
  has_many :salesorders
  has_many :invoices


  def cus_id
    "customer_#{self.id}"
  end
end
