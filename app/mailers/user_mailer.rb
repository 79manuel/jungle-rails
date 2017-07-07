class UserMailer < ApplicationMailer
  default from: 'no-reply@jungle.com'

  def welcome_email(order)
    @order = order
    @url  = 'http://localhost:3000//login'
    mail(to: @order.email, subject: 'Welcome to the Jungle!')
  end
end
