class Participation < ActiveRecord::Base
  attr_accessible :tournament_id
  belongs_to :tournament
end
