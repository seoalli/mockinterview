require 'mail'
class UserMailer < ActionMailer::Base
default :from => 'cbmid@careerbuilder.com'

  def welcome_email(user)
    @user = user

    #@user.debugger
    @url  = 'http://mockinterview.com'
    #binding.pry
    mail( :to => user.email,
          :subject => 'Welcome to Mock Interview Day')

=begin
    Mail.deliver do
      to user.email
      from 'cbmid@careerbuilder.com'
      subject 'Welcome to Mock Interview Day'
      body "welcome to mock interview day!"

    end
=end
  end

end
