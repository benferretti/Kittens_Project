class UserMailer < ApplicationMailer
  default from: 'amaury.desbazeille@gmail.com'

  def send_new_user_message(user)
    @user = user
    @url  = 'https://kittens-project-develop.herokuapp.com/'

    mail(to: @user.email, subject: 'Confirmation de votre inscription')
  end
end
