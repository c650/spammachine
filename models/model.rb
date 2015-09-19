require 'twilio-ruby'

$troll_array = ['http://41.media.tumblr.com/tumblr_lvrfnaXz651qibz0jo1_r1_500.png','http://data2.whicdn.com/images/12501601/large.jpg','http://media.tumblr.com/tumblr_m8juqvJzvz1rujvrc.jpg','http://2.bp.blogspot.com/-mqiwVnBchYI/UzchsRKNqfI/AAAAAAAADTg/BQxKnjpLgVo/s1600/Famous-characters-Troll-face-Troll-face-me-gusta-205534.png','https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcT_-bWgUwY_yya6WMc3oXQYKeu2UQOJ5ptwJoePBt5CSAznNWXSDQ','https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQ-aCatXehejPdb_uq4dWJMuyEQkJE-l6_9rsJjSksb4GiHfycr']

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
		:media_url => $troll_array[rand($troll_array.length)]
	})

end
