class UserMailer < ApplicationMailer
  default from: email_address_with_name("mtanzeel6633@gmail.com", "Article Arc Teh.")

  def welcome_email
    @user = params[:user]
    @url = 'https://articlearc.com/madanibecon/login'
    mail(to: email_address_with_name(@user.email, @user.name),
    subject: 'Welcome to my awesome site!')
  end
end
