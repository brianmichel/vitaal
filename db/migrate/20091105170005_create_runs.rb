class CreateRuns < ActiveRecord::Migration
  def self.up
    create_table :runs do |t|
      t.reference :courseID
      t.reference :userID
      t.datetime  :runTime
      
      t.timestamps
    end
  end

  def self.down
    drop_table :runs
  end
end
