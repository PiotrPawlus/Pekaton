class AddReferenceTaskToWorkTime < ActiveRecord::Migration
  def change
    add_column :work_times, :task_id, :integer
  end
end
