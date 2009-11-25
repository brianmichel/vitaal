class AddUsernameEmailFullnameToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :username, :string
    add_column :users, :email, :string
    add_column :users, :fullname, :string
    remove_column :users, :firstName
    remove_column :users, :lastName
  end

  def self.down
    remove_column :users, :username
    remove_column :users, :email
    remove_column :users, :fullname
    add_column :users, :firstName
    add_column :users, :lastName
  end
end
