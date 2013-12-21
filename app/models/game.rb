class Game < ActiveRecord::Base

  has_many :genres
  has_many :languajes

end
