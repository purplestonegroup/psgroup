class ContactMail < ActionMailer::Base
  
  attr_accessor :name, :email, :phone, :subject, :comments

  default to: 'directorgeneral@pstonemedia.com', from: 'noreply@purplestonegroup.com'

  headers = {'Return-Path' => 'noreply@purplestonegroup.com'}

  def contact_email(contact)
    
    @contact = contact
    
    @url  = 'http://purplestonegroup.herokuapp.com/contacts/new'
    
    mail(
    	to: @contact.email,
    	subject: 'Message from the contact form of Purple Stone Group'
    	from: "PurpleStoneGroup <noreply@purplestonegroup.com>",
      	return_path: "noreply@purplestonegroup.com",
      	date: Time.now,
      	content_type: "text/html"
    )
  end

end
