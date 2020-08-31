class ProductOrder < ApplicationRecord
  belongs_to :order
  belongs_to :product

  after_create :product_order_confirmed

  def product_order_confirmed
    ProductOrderMailer.product_order_confirmed(self).deliver_now
  end
end
