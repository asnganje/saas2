class ProjectsController < ApplicationController
  layout 'admin'
  before_action :set_project, only: [:destroy, :edit, :show, :update]

  def index
    @projects = Project.all
  end

  def create
    @project = current_user.projects.create(project_params)
    if @project.save
      respond_to do |format|
        format.html {redirect_to projects_url, notice: "Project created!"} 
      end      
    else
      respond_to do |format|
        format.html {redirect_to projects_url, alert: @project.errors.full_messages[0]}
      end 
    end
    
  end

  def show
  end
  def edit
  end

  def update
    if @project.update(project_params)
      respond_to do |format|
        format.html {redirect_to projects_url, notice: "Project updated"}
      end
    else
      respond_to do |format|
        format.html {redirect_to projects_url, alert: @project.errors.full_messages[0]}
      end
    end
  end

  def destroy
    if @project.destroy
      respond_to do |format|
        format.html {redirect_to projects_url, notice: "Project deleted"}
      end
    else
      respond_to do |format|
        format.html {redirect_to projects_url, alert: @project.errors.full_messages[0]}
      end
    end
  end

  private
  def project_params
    params.require(:project).permit(:name)
  end

  def set_project
    @project = Project.find(params[:id])
  end
end
