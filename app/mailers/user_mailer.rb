class UserMailer < ApplicationMailer
	default from: "from@example.com"

	def entry_created(project)
		@project = project
		mail(to: "svonharris@gmail.com", subject: "New entry created in project #{project.name}")
	end
end
