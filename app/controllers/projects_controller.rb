class ProjectsController < ApplicationController
  def index
    
  end
  def new
    @project = Project.new
  end
  def create
    @project = Project.new(params[:project])
    @project.save
    flash[:notice] = "Proejct has been created."
    redirect_to @project
  end
  def create
    @project = Project.new(params[:project])
    if @project.save
      flash[:notice] = "Project has been created."
      redirect_to @project
    else
      flash[:alert] = "Project has not been created."
      render :action => "new"
    end
  end
end
