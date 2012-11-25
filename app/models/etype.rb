class Etype < ActiveRecord::Base
  attr_accessible :name, :price
  has_many :enrollments
end
