class Enrollment < ActiveRecord::Base
  attr_accessible :birt, :dni_l, :dni_n, :first_name, :hardware, :last_name, :nick, :email, :add_clan, :video_game_tournamens, :pc_tournamens, :clan_attributes, :tournament_ids
  belongs_to :clan
  has_many :participations
  has_many :tournaments, through: :participations
  validates_presence_of :birt, :dni_l, :dni_n, :first_name, :last_name, :email
  validates_uniqueness_of :dni_n, :email
  validate :pc_count
  validate :video_game_count
  accepts_nested_attributes_for :clan

  def pc_count
    if self.tournaments.where(pc: true).count >= 2
      errors.add(:pc_tournamens, "No puedes incribirte en mas de dos competiciones de pc.")
    end
  end
  def video_game_count
    if self.tournaments.where(pc: false).count >= 2
      errors.add(:video_game_tournamens, "No puedes incribirte en mas de dos competiciones de consola.")
    end
  end
end
