class UserMailer < ActionMailer::Base
  #I named my website as bowwowcspp.com. The email should be sent out to new user
  default from: "kenny@bowwowcspp.com"
  def welcome_email(user)
    @user = user
    @url  = "http://bowwowcspp.com/"
    mail(:to => user.email, :subject => "Welcome to My BowWow Site")
  end
end
