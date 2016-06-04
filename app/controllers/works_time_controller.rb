class WorksTimeController < ApplicationController
  def index
    @works_time = WorkTime.all
  end

  def new
    @work_time = WorkTime.new
  end

  def create
    @new_work_time = WorkTime.new(work_time_parameters)
    if @new_work_time.save
      redirect_to(:controller => 'works_time', :action => 'index')
    else
      render('new')
    end
  end

  def edit
  end

  def show
  end

  def destroy
  end
end
