class AddOwnerIdToCourses < ActiveRecord::Migration
  def self.up
    add_column :courses, :ownerID, :integer
  end

  def self.down
    remove_column :courses, :ownerID
  end
end
