class ProductCartsController < ApplicationController
  before_action :authenticate_user!

  def new
    @product = Product.find(params[:id])
  end

  def create
    @cart = Cart.where(user_id: current_user.id).last
    @product = Product.find(params[:product_id])

    @productcart = ProductCart.new(
      product_id: @product.id,
      cart_id: @cart.id,
      total_price: @product.price,
      quantity: 1
    )
    if @productcart.save
      flash.now[:success] = "La carte de #{@product.name} a bien été ajoutée à ton panier ! "
    else 
      flash.now[:error] = "Nous n'avons pas pu ajouter cette carte à ton panier."
    end
  end
end
