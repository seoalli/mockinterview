class UserMailer < ApplicationMailer
default from: 'cbmid@careerbuilder.com'

  def welcome_email(user)
    @user = user
    #@user.debugger
    @url  = 'http://mockinterview.com'

    mail(to: @user.email, subject: 'Welcome to Mock Interview Day')
  end



end
