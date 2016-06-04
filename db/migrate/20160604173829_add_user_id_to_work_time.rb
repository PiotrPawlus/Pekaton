class AddUserIdToWorkTime < ActiveRecord::Migration
  def change
    add_column :work_times, :user_id, :integer
  end
end
