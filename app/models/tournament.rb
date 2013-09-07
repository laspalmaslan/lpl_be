class Tournament < ActiveRecord::Base
  attr_accessible :award, :description, :game, :pc
  has_many :participations
end
