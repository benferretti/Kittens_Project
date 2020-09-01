class CartsController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  before_action :is_my_cart, only: [:show]

  def show
    @cart = Cart.find(params[:id])

    @products_cart = ProductCart.where(cart_id: params[:id])
    
    @total_price = 0
    @products_cart.each do |product_cart|
      @total = product_cart.product.price  + @total_price
    end
  end

  def create 
    if authenticate_user!
      Cart.create(user_id: current_user.id)
    end
  end

  def is_my_cart
    if Cart.find(params[:id]).user_id != current_user.id
      flash[:error] = "Bah alors petit malin ! On essaye de voir les paniers des autres ?"
      redirect_to root_path
    end
  end

end
