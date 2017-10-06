class ExampleMailer < ActionMailer::Base

  # def sample_email(user)
  #   @user = user
  #   mg_client = Mailgun::Client.new ENV['api_key']
  #   message_params = {:from    => ENV['gmail_username'],
  #                     :to      => @user.email,
  #                     :subject => 'Sample Mail using Mailgun API',
  #                     :text    => 'This mail is sent using Mailgun API via mailgun-ruby'}
  #   mg_client.send_message ENV['domain'], message_params
  # end

  default from: 'jane.soo47@gmail.com'
   
  def sample_email(user)
    @user = user
    @url  = 'http://www.gmail.com'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

end