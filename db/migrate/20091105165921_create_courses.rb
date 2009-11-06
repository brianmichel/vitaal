class CreateCourses < ActiveRecord::Migration
  def self.up
    create_table :courses do |t|
      t.string  :courseID
      t.reference :ownerID
      t.string  :courseName
      t.string  :courseCity
      t.string  :courseState
      t.string  :courseCountry
      
      t.timestamps
    end
  end

  def self.down
    drop_table :courses
  end
end
