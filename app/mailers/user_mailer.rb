class UserMailer < ActionMailer::Base
  default from: "kenny@bowwowcspp.com"
  def welcome_email(user)
    @user = user
    @url  = "http://bowwowcspp.com/"
    mail(:to => user.email, :subject => "Welcome to My BowWow Site")
  end
end
