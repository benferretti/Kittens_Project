class ApplicationMailer < ActionMailer::Base
  default from: 'kitties_project@protonmail.com'
  layout 'mailer'
  @url  = 'https://kittens-project-develop.herokuapp.com/'
end
