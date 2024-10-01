class Blog < ApplicationRecord
  validates_presence_of :title, :body
  #validates :body, presence: true
end
