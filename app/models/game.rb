class Game < ActiveRecord::Base

  has_and_belongs_to_many :genres
  has_and_belongs_to_many :languajes

  mount_uploader :portada, PortadaUploader
  mount_uploader :captura, CapturaUploader

end