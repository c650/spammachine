 require 'twilio-ruby'
 
 def send_spam(phone, msg, time)
 	time = time.to_i
 	@msg_array = Array.new
 	time.times do |x|
+		break if ((msg.length)*(@msg_array.length)) > 1599
 		@msg_array.push(msg)
 	end
 
 	msg = @msg_array.join(' ')
 
 	account_sid = 'AC633a4f798afcb2aba4ae658ab3ddf465'
 
 	auth_token = 'dade8c6c18cad71adc0947977dd5edf7'
 
 	@client = Twilio::REST::Client.new account_sid, auth_token
 
 	 @client.account.messages.create({
 		:from => '+17862920603',  
 		:to => phone,
 		:body => msg
 	})
 
 end
