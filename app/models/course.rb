class Course < ActiveRecord::Base 
  belongs_to :user
  has_many :runs
  has_many :users, :through => :runs
  validates_presence_of :courseName, :message => "Oops, looks like you forgot the course name!"
  validates_presence_of :courseState, :on => :create, :message => "can't be blank"
end

