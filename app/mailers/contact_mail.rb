class ContactMail < ActionMailer::Base
  default from: "noreply@purplestonegroup.com"


  def contact_email(contact)
    @contact = contact
    @url  = 'http://example.com/login'
    mail(to: @contact.email, subject: 'Message from the contact form of Purple Stone Group')
  end

end
