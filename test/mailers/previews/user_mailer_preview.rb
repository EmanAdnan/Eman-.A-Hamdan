class UserMailerPreview < ActionMailer::Preview
  def contact_form
    UserMailer.contact_form(@email, @name, @message)
  end
end