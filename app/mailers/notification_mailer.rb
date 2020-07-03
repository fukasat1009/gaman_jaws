class NotificationMailer < ApplicationMailer
  def send_confirm_to_user(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to Our Application!')
  end
end
