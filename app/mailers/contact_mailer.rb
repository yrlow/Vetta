class ContactMailer < ActionMailer::Base
	default from: 'dicksonlyr@gmail.com'

	def contact_email(index, name, email, body)
		@index = index
		@name = name
		@email = email
		@body = body

		#once got contacts, send to yr_low from dicksonlyr
		mail(to: 'yr_low@hotmail.com', subject: "#{@index}. #{@name}")
	end
end
