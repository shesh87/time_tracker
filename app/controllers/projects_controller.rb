class ProjectsController < ApplicationController
	def index
		# @projects = Project.order(created_at: :desc).limit(10)
		@projects = Project.last_created_projects(10)
		if @projects.empty?
			render "no_projects"
		end
	end

	def show
		@project = Project.find(params[:id])
		unless @project = Project.find_by(id: params[:id])
			render 'not_found'
		end
	end

end
