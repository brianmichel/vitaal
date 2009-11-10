class User < ActiveRecord::Base
  acts_as_authentic
  has_many :runs
  has_many :courses, :through => :runs
  
  def full_name
    "#{firstName} #{lastName}"   
  end

end
