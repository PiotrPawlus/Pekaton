class AddUserIdAtributeToUser < ActiveRecord::Migration
  def self.up
    change_table(:users) do |t|
      t.string "user_id", :limit=>6, :null=>false
    end
  end
end
