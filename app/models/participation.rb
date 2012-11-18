class Participation < ActiveRecord::Base
  attr_accessible :enrollment_id, :tournament_id
  belongs_to :enrollment
  belongs_to :tournament
end
