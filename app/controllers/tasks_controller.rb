class TasksController < ApplicationController
  before_action :authenticate_user!

  def index
    @tasks = Task.all
    @new_task = Task.new
    @projects = Project.all
  end

  def new
    @new_task = Task.new
  end

  def create
    new_task = Task.new(task_parameters)
    if new_task.save
      redirect_to(:action => 'index')
    else
      render :index
    end
  end

  def edit
    @task = Task.find(params[:id])
    @projects = Project.all
  end

  def update
    task = Task.find(params[:id])
    if task.update_attributes(task_update_parameters)
      redirect_to(:action=>'index')
    else
      render('edit')
    end
  end

  def destroy
    @task = Task.find(params[:id])
  end

  def drop
    task = Task.find(params[:id]).destroy
    redirect_to(:action => 'index')
  end

  def task_parameters
    params.require(:new_task).permit(:title, :project_id)
  end

  def task_update_parameters
    params.require(:task).permit(:is_done, :title, :project_id)
  end
end
