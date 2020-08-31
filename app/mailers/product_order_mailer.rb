class ProductOrderMailer < ApplicationMailer
  default from: 'amaury.desbazeille@gmail.com'

  def product_order_confirmed(product_order)
    @order = Order.find(product_order.order_id)
    @user = User.find(@order.user_id)
    @url  = 'https://kittens-project-develop.herokuapp.com/'

    # create an array with all products ordered
    @products_ordered = Array.new
    ProductOrder.where(order_id: @order.id).each do |item|
      @products_ordered << Product.find(item.product_id)
    end

    mail(to: @user.email, subject: 'Confirmation de votre commande')
  end
end
