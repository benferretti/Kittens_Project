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
      flash[:success] = "La carte de #{@product.name} a bien été ajoutée à ton panier ! "
    else 
      flash[:error] = "Nous n'avons pas pu ajouter cette carte à ton panier."
    end
  end

  def destroy
    @productcart = ProductCart.find(params[:cart_id])
    if @productcart.destroy
      flash[:success] = "Cette carte a bien été supprimée"
      redirect_to user_cart_path(Cart.find_by(user_id: current_user.id))
    end
  end
end
