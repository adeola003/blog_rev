class Portfolio < ApplicationRecord
  validates_presence_of :title, :subtitle
  def self.ang
    where(subtitle: "Angular")
  end

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "https://place-hold.it/600x450"
    self.thumb_image ||= "https://place-hold.it/300x150"
  end
end
