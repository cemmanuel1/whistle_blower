# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Wb::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => 'jehrlich',
  :password => 'Ars3n@l2014',
  :domain => 'http://www.centralparknyc.org',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}