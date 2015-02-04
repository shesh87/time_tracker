class EntriesController < ApplicationController
	
	def index
		@project = Project.find(params[:project_id])
		@entries = @project.entries
		# @month = @entries.where(date: beginning_of_month..end_of_month)
		@hours = @project.monthly_hours(2015, 02)
	end

	def show

	end

end
