class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    if @project.save
     flash[:notice] = 'Project added!'
     redirect_to projects_path
   else
     flash[:error] = 'Failed to edit product!'
     render :new
   end
  end

  def destroy
  end

  private
  def project_params
    params.require(:project).permit(:name, :path, :title)
  end
end
