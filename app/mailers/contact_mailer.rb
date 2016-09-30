class ContactMailer < ActionMailer::Base
	default to: 'yr_low@hotmail.com'

	def contact_email(name, email, body)
		@name = name
		@email = email
		@body = body

		mail(from: email, subject: "Hello #{name}!")
	end
end
