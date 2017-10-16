class ExampleMailer < ActionMailer::Base
  default from: "jane.soo7@gmail.com"

  def signup_confirmation(user)
    @user = user
    mail to: user.email, subject: "Sign Up Confirmation"
  end
  
end