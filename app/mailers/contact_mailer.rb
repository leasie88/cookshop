class ContactMailer < ActionMailer::Base
  default from: "contact@cookshop.com"
  default to: "sarahsponda902@gmail.com"
  
  def contact_email(name, email, subject, message)
    @name = name
    @email = email
    @message = message
    @subject = subject
    mail(:subject => "New Cookshop ContactUs Submitted")
  end
end
