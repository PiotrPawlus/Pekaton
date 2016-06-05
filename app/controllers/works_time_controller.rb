class WorksTimeController < ApplicationController
  before_action :authenticate_user!

  def index
    @works_time = WorkTime.all
    @new_work_time = WorkTime.new
    @tasks = Task.all
  end

  def create
    @work_time = WorkTime.new(work_time_parameters)
    @work_time.update_attributes(:user_id => current_user.id)
    if @work_time.save
      redirect_to(:action => 'index')
    else
      render :index
    end
  end

  def edit
    @work_time = WorkTime.find(params[:id])
    @tasks = Task.all
  end

  def update
    work_time = WorkTime.find(params[:id])
    if work_time.update_attributes(work_time_parameters)
      redirect_to(:action=>'index')
    else
      render('edit')
    end
  end

  def destroy
    @work_time = WorkTime.find(params[:id])
  end

  def drop
    work_time = WorkTime.find(params[:id]).destroy
    redirect_to(:action => 'index')
  end

  def work_time_parameters
    params.require(:work_time).permit(:start_at, :end_at, :task_id)
  end
end
