class ProductCartsController < ApplicationController
  before_action :authenticate_user!

  def new
    @product = Product.find(params[:id])
  end

  def create
    @cart = Cart.where(user_id: current_user.id).last
    @product = Product.find(params[:id])

    ProductCart.create(
      product_id: @product.id
      cart_id: @cart.id
    )
  end
end
