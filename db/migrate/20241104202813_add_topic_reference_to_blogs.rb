class AddTopicReferenceToBlogs < ActiveRecord::Migration[7.0]
  def change
    add_reference :blogs, :topic, null: true, foreign_key: true
  end
end
