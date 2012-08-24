class ContactUsController < ApplicationController
  
  def new
  end
  
  def send_email
    name = params[:contact_us][:name]
    email = params[:contact_us][:email]
    subject = params[:contact_us][:subject]
    body = params[:contact_us][:body]
    
    if name.blank? || email.blank? || body.blank? || subject.blank
      flash[:notice] = "Please fill out all fields"
      redirect_to '/contact_us/new'
    else
      ContactMailer.contact_email(name, email, subject, body).deliver
      flash[:notice] = "Email was successfully sent, we'll get back to you soon."
      redirect_to root_path
    end
  end
  
end
