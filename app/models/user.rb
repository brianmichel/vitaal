class User < ActiveRecord::Base
  has_many :runs
  has_many :courses, :through => :runs
end
