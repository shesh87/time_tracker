class EntriesController < ApplicationController
	
	def index
		@project = Project.find(params[:project_id])
		@entries = @project.entries
		@date = DateTime.now
		@entries = @project.entries_for(@date)
	end

	def show
		
	end

	def new
		@project = Project.find(params[:project_id])
		@entry = @project.entries.new
	end

	def create
		@project = Project.find(params[:project_id])
		@entry = @project.entries.new entry_params
		if @entry.save
			flash[:notice] = "Entry created succesfully"
			# redirect_to action: "index", controller: "entries", project_id: @project.id
			UserMailer.entry_created(@project).deliver
			redirect_to(project_entries_path(@project))
		else
			flash[:error] = "Entry was not created"
			render "new"
		end
	end

	def edit
		@project = Project.find(params[:project_id])
		@entry = @project.entries.find(params[:id])
	end

	def update
		@project = Project.find(params[:project_id])
		@entry = @project.entries.find(params[:id])
		if @entry.update_attributes(entry_params)
			redirect_to action: "index", controller: "entries", id: @project.id
		else
			render "edit"
		end
	end

	def destroy
		@project = Project.find(params[:project_id])
		@entry = @project.entries.find(params[:id])
		if @entry.destroy
			redirect_to action: "index", controller: "entries", id: @project_id
		else
			render "index"
		end
	end

	private
		def entry_params
			params.require(:entry).permit(:hours, :minutes, :date)
		end

end
