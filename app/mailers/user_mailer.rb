require 'mail'
class UserMailer < ActionMailer::Base
default :from => 'cbmid@careerbuilder.com'

  def welcome_email(user)
    @user = user

    @url  = 'http://mockinterview.com'

    mail( :to => user.email,
          :subject => 'Welcome to Mock Interview Day')

  end

  def cancel_email(user)
	@user = user
	@url = 'http://mockinterview.com'

	@date = 'August 22nd'

	mail( :to => user.email,
		  :subject => "Mock Interview Day Cancellation")

  end

end
