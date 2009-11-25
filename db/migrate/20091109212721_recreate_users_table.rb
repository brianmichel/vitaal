class RecreateUsersTable < ActiveRecord::Migration
  def self.up
    remove_column :users, :userID
    remove_column :users, :active
    rename_column :users, :fullname, :name
  end

  def self.down
    add_column :users, :userID, :string
    add_column :users, :active, :boolean
    rename_column :users, :name, :fullname
  end
end
