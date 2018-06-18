class ProductSalesorder < ApplicationRecord
  belongs_to :product
  belongs_to :salesorder
end
