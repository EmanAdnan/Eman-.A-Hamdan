class UserMailerPreview < ActionMailer::Preview
  def contact_form
    UserMailer.contact_form("emanadnan109@gmail.com", "Eman", "Hello World!")
  end
end