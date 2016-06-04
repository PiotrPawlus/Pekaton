class CreateWorkTimes < ActiveRecord::Migration
  def up
    create_table :work_times do |t|
      t.datetime "end_at"
      t.datetime "start_at", null: false
      t.timestamps null: false
    end
  end

  def down
    drop_table :work_times
  end
end
