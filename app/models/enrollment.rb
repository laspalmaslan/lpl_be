class Enrollment < ActiveRecord::Base
  attr_accessible :birt, :dni_l, :dni_n, :first_name, :hardware, :last_name, :nick, :email, :add_clan, :vide_games_tournaments, :pc_tournaments
  has_many :participations
  has_many :tournaments, through: :participations
  validates_presence_of :birt, :dni_l, :dni_n, :first_name, :last_name, :nick, :email
  validates :pc_count
  validates :video_game_count

  belongs_to :clan
  attr_reader :add_clan

  def add_clan=(name)
    self.clan << Clan.find_or_create_by_name(name)
  end

  def video_game_tournamens=(ids)
    ids.each do |id|
      self.tournaments << Tournament.find(id)
    end
  end
  def pc_tournamens=(ids)
    ids.each do |id|
      self.tournaments << Tournament.find(id)
    end
  end
  def pc_count
    if self.tournament.where(pc: true).count >= 2
      errors.add(:tournaments, "No puedes incribirte en mas de dos competiciones de pc.")
    end
  end
  def video_game_count
    if self.tournament.where(pc: false).count >= 2
      errors.add(:tournaments, "No puedes incribirte en mas de dos competiciones de consola.")
    end
  end
end
