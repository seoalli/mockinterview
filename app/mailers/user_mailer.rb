class UserMailer < ApplicationMailer
  default from: 'cbmid@careerbuilder.com'

  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to Mock Interview Day')
  end

end
