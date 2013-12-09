class ContactMail < ActionMailer::Base
  
  attr_accessor :name, :email, :phone, :subject, :comments

  default to: 'purplestonegroup.com@gmail.com', from: 'purplestonegroup.com@gmail.com'

  headers = {'Return-Path' => 'purplestonegroup.com@gmail.com'}

  def contact_email(contact)
    
    @contact = contact
    
    @url  = 'http://purplestonegroup.herokuapp.com/contacts/new'
    
    mail(
    	to: @contact.email,
    	subject: 'Message from the contact form of Purple Stone Group'
    	from: "PurpleStoneGroup <purplestonegroup.com@gmail.com>",
      	return_path: "purplestonegroup.com@gmail.com",
      	date: Time.now,
      	content_type: "text/html"
    )
  end

end
