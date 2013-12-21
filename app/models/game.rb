class Game < ActiveRecord::Base

  has_many :genres
  has_many :languajes

  mount_uploader :portada, PortadaUploader
  mount_uploader :captura, CapturaUploader

end