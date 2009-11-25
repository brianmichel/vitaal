class AddUseridAndCourseidToRuns < ActiveRecord::Migration
  def self.up
    add_column :runs, :user_id, :string
    add_column :runs, :course_id, :string
  end

  def self.down
    remove_column :runs, :user_id
    remove_column :runs, :course_id
  end
end
