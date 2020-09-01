class UserMailer < ApplicationMailer
  default from: 'amaury.desbazeille@gmail.com'

  def send_new_user_message(user)
    @user = user

    mail(to: @user.email, subject: "Confirmation d'inscription")
  end
end
