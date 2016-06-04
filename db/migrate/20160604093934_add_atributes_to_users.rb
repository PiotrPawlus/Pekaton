class AddAtributesToUsers < ActiveRecord::Migration
  def self.up
    change_table(:users) do |t|
      t.string "name", :limit=>40, :null=>false
      t.string "surname", :limit=>40, :null=>false
      t.string "phone", :limit=>15, :null=>false
    end
  end
end
