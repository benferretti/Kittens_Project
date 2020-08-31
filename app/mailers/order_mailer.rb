class OrderMailer < ApplicationMailer
  default from: 'amaury.desbazeille@gmail.com'

  def order_confirmed(order)
    @user = order.user_id
    puts '$$$$$$$$$$$$$$$$ mailer $$$$$$$$$$$$$$$$$$'
    puts @user
    puts order.id
    
    #create an array with all products ordered
    #@products_ordered = Array.new
    #Product_orders.find(order.id).each do |item|
    #  @products_ordered << Product.find(item.id)
    #end

    @url  = 'https://kittens-project-develop.herokuapp.com/'

    mail(to: @user.email, subject: 'Confirmation de votre commande')
  end
end
