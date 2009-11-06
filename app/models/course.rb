class Course < ActiveRecord::Base
  has_many :runs
  has_many :users, :through => :runs
end
