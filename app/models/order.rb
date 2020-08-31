class Order < ApplicationRecord
  belongs_to :user

  has_many :product_orders
  has_many :products, through: :product_orders

  after_update :order_confirmed

  def order_confirmed
    OrderMailer.order_confirmed(self).deliver_now
  end

end
