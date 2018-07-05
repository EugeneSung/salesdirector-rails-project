class Salesorder < ApplicationRecord
  has_many :invoices
  belongs_to :customer
  belongs_to :salesman
  has_many :product_salesorders
  has_many :products, through: :product_invoices


  validates :order_number, :salesman_id, :customer_id, presence: true
  validates :order_number, uniqueness: true
  accepts_nested_attributes_for :product_salesorders, :allow_destroy => true


  def sum
    total = 0

    if self.product_salesorders.empty? != true
      self.product_salesorders.each do |product_salesorder|
        total = total + (product_salesorder.product.price * product_salesorder.quantity)
      end

    else
      flash[:notice] = 'No orders'

    end



      total

  end


end
