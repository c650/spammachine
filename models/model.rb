require 'twilio-ruby' #calls on the twilio api ruby gem
#initializes array of several different urls to troll face images
$troll_array = ['http://41.media.tumblr.com/tumblr_lvrfnaXz651qibz0jo1_r1_500.png','http://data2.whicdn.com/images/12501601/large.jpg','http://media.tumblr.com/tumblr_m8juqvJzvz1rujvrc.jpg','http://2.bp.blogspot.com/-mqiwVnBchYI/UzchsRKNqfI/AAAAAAAADTg/BQxKnjpLgVo/s1600/Famous-characters-Troll-face-Troll-face-me-gusta-205534.png','https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcT_-bWgUwY_yya6WMc3oXQYKeu2UQOJ5ptwJoePBt5CSAznNWXSDQ','https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQ-aCatXehejPdb_uq4dWJMuyEQkJE-l6_9rsJjSksb4GiHfycr']

def send_spam(phone, msg, time) #declaration of method for sending spam
	time = time.to_i #converts the string containing the number of times into an integer
	@msg_array = Array.new #initializes new array to contain the repeated version of the message
	time.times do |x| #iterates and adds message to the array a specified number of times
		break if ((msg.length)*(@msg_array.length) + msg.length) > 1599 #checks to see if the message surpasses 1600 char limit
		@msg_array.push(msg) #adds a new instance of the message to the array
	end

	msg = @msg_array.join(' ') #converts the array to a string with a space between each element

	account_sid = 'AC633a4f798afcb2aba4ae658ab3ddf465'

	auth_token = 'dade8c6c18cad71adc0947977dd5edf7'

	@client = Twilio::REST::Client.new account_sid, auth_token #code to send actual text message

	 @client.account.messages.create({
		:from => '+17862920603',  
		:to => phone,
		:body => msg,
		:media_url => $troll_array[rand($troll_array.length)]
	})

end
