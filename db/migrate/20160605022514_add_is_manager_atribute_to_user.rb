class AddIsManagerAtributeToUser < ActiveRecord::Migration
  def self.up
    change_table(:users) do |t|
      t.boolean "is_manager", :default=>false
    end
  end
end
