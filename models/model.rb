require 'twilio-ruby'

def send_spam(phone, msg, time)
	time = time.to_i
	@msg_array = Array.new
	time.times do |x|
		break if ((msg.length)*(@msg_array.length)) > 1599
		@msg_array.push(msg)
	end

	msg = @msg_array.join(' ')

	account_sid = ''

	auth_token = ''

	@client = Twilio::REST::Client.new account_sid, auth_token

	 @client.account.messages.create({
		:from => '+17862920603',  
		:to => phone,
		:body => msg,
		:media_url => 'http://41.media.tumblr.com/tumblr_lvrfnaXz651qibz0jo1_r1_500.png'
	})

end
