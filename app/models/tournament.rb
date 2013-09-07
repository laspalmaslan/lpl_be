class Tournament < ActiveRecord::Base
  attr_accessible :award, :description, :game, :pc, :image
  has_attached_file :image
  has_many :participations
  has_many :enrollments, through: :participations
end
