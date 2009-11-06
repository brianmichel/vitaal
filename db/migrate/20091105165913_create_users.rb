class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string  :userID
      t.string  :firstName
      t.string  :lastName
      t.boolean :active
      
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
