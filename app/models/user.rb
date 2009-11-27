class User < ActiveRecord::Base
  acts_as_authentic
  validates_uniqueness_of :username
  has_many :runs
  has_many :courses, :through => :runs
  
  has_many :friendships
  has_many :friends, :through => :friendships
  
  def full_name
    "#{firstName} #{lastName}"   
  end

end
