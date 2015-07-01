# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!
=begin
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.default_content_type = "text/enriched"

ActionMailer::Base.server_settings = {
    :address => "smtp.careerbuilder.com",
    :port => 25,
    :domain => "careerbuilder.com",
    :authentication => :login,
    :user_name => "username",
    :password => "password",

}
=end