class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    @new_project = Project.new
  end

  def create
    new_project = Project.new(project_prameters)
    if new_project.save
      redirect_to(:action => 'index')
    else
      render :index
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    project = Project.find(params[:id])
    if project.update_attributes(project_update_prameters)
      redirect_to(:action=>'index')
    else
      render('edit')
    end
  end

  def show
    @project = Project.find(params[:id])
    @tasks = Task.all
  end

  def destroy
    @project = Project.find(params[:id])
  end

  def drop
    project = Project.find(params[:id]).destroy
    redirect_to(:action => 'index')
  end

  def project_prameters
    params.require(:new_project).permit(:title, :start_date, :provide_stop_date)
  end

  def project_update_prameters
    params.require(:project).permit(:title, :start_date, :provide_stop_date, :is_done)
  end
end
