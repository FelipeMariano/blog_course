class ProjectsController < ApplicationController
	before_action :find_project, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]
	def index
		@projects = Project.all.order('created_at desc').paginate(page: params[:page], per_page: 10)
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new project_params
		if @project.save
			redirect_to @project, notice: "Project built!"
		else
			render 'new'
		end
	end

	def show
	end

	def edit
	end

	def update
		if @project.update project_params
			redirect_to @project, notice: "project edited!"
		else
			render 'edit'
		end
	end

	def destroy
		@project.destroy
		redirect_to projects_path
	end

	def find_project
		@project = Project.friendly.find(params[:id])
	end	

	private

		def project_params
			params.require(:project).permit(:title, :description, :link, :slug)			
		end
end
