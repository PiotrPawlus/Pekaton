class AddIsAdminAtributeToUser < ActiveRecord::Migration
  def self.up
    change_table(:users) do |t|
      t.boolean "is_admin", :default=>false, :null=>false
    end
  end
end
