class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1} 
  validates_presence_of :title, :body
  #validates :body, presence: true
  belongs_to :topic, class_name: "topic", foreign_key: "topic_id"
end
