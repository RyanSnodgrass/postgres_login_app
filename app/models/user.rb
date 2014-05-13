class User < ActiveRecord::Base
	has_secure_password

	validates_uniqueness_of :email
	
	validates_presence_of :name
	validates_presence_of :email

	#after_create :send_thankyou_email

	# def send_new_friend_to_all
	# 	UserMailer.new_friend_message_to_all(User.all, self)
	# end


end