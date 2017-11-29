class UserMailerPreview < ActionMailer::Preview
  def contact_form
    UserMailer.contact_form("emanadnan279@gmail.com", "Eman", "Hello World!")
  end
end