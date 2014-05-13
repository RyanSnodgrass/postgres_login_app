class UserMailer < ActionMailer::Base
  default from: "langenhagen.rs@gmail.com"

  def new_friend_message(user)
  	@user = user

  	mail(to: @user.email, subject: "Welcome to the club!")
  end
end
