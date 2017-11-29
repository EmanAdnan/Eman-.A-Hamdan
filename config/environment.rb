# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
:address => "smtp.gmail.com",
:port => 587,
:authentication => :plain, 
:enable_starttls_auto => true,

:user_name => 'emanadnan109@gmail.com',
:password => 'eman109109',
domain: 'heroku.com'
}
