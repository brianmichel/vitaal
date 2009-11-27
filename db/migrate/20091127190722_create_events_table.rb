class CreateEventsTable < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :user_id
      t.string :type
      t.string :data
      
      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
