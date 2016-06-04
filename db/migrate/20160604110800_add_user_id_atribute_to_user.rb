class AddUserIdAtributeToUser < ActiveRecord::Migration
  def self.up
    change_table(:users) do |t|
      t.integer "userID", :null=>false
    end
  end
end
