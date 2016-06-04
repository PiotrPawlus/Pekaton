class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.boolean "is_done", :default=>false
      t.string "title", :limit=>100, :null=>false
      t.timestamps null: false
    end
  end
end
