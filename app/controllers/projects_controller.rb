class ProjectsController < ApplicationController

	def index
		# @projects = Project.order(created_at: :desc).limit(10)
		@projects = Project.last_created_projects(10)
	end

	
end
