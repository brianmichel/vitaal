class CreateFriendships < ActiveRecord::Migration
  def self.up
    create_table :friendships do |t|
      t.string :user_id
      t.string :friend_id
      
      t.timestamps
    end
  end

  def self.down
    drop_table :friendships
  end
end
