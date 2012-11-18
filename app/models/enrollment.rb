class Enrollment < ActiveRecord::Base
  attr_accessible :birt, :dni_l, :dni_n, :first_name, :hardware, :last_name, :nick, :email
  has_many :participations
  has_many :enrollments, through: :participations
end
