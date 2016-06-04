class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.boolean "is_done", :default => false
      t.string "title", :limit => 100, :null => false
      t.date "start_date", :null => false
      t.date "provide_stop_date", :null => false
      t.timestamps null: false
    end
  end
end
