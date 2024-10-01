class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1} 
  validates_presence_of :title, :body
  #validates :body, presence: true
end
