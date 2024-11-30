class Portfolio < ApplicationRecord
  include Placeholder
  has_many :technologies
  validates_presence_of :title, :subtitle
  def self.ang
    where(subtitle: "Angular")
  end
  
  scope :ror, -> { where(subtitle: 'Ruby on Rails')}

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_genrerator(height: 600, width: 450)
    self.thumb_image ||= Placeholder.image_genrerator(height: 300, width: 200)
  end
end
