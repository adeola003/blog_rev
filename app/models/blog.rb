class Blog < ApplicationRecord
  validadates :title, presence: true
  validates :body, presence: true
end
