class Customer < ApplicationRecord
  belongs_to :salesman
  has_many :salesorders
  has_many :invoices

  validates :name, :address, :phone_number, presence: true
  validates :name, uniqueness: true

  def cus_id
    "customer_#{self.id}"
  end
end
