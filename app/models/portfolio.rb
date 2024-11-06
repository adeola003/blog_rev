class Portfolio < ApplicationRecord
  validates_presence_of :title, :subtitle
  def self.ang
    where(subtitle: "Angular")
  end
end
