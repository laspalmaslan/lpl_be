class Tournament < ActiveRecord::Base
  attr_accessible :award, :description, :game, :pc
  has_many :participations
  has_many :enrollments, through: :participations
end
