class ProductCartsController < ApplicationController
  before_filter :redirect_visitors
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

    respond_to do |format|
      format.html {
        @productcart.save
        redirect_to root_path
      }

      format.js {
        @productcart.save
      }
    end

  end

  def destroy
    @productcart = ProductCart.find(params[:cart_id])
    if @productcart.destroy
      flash[:success] = "Cette carte a bien été supprimée"
      redirect_to user_cart_path(Cart.find_by(user_id: current_user.id))
    end
  end

  def redirect_visitors
    puts '-----------------'
    if !current_user
      respond_to do |format|
        format.html {
          puts 'html----------------------'
          redirect_to new_user_session_path
        }

        format.js {
          puts 'js ------------------------------'
          redirect_to new_user_session_path
        }
      end
    end
  end
end
