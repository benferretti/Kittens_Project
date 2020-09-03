class UserMailer < ApplicationMailer
  default from: 'kitties_project@protonmail.com'

  def send_new_user_message(user)
    @user = user
    @url  = 'https://kittens-project-develop.herokuapp.com/'
    mail(to: @user.email, subject: "Confirmation d'inscription")
  end
end
