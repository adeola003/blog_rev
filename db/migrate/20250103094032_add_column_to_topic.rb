class AddColumnToTopic < ActiveRecord::Migration[7.0]
  def change
    add_column :topics, :description, :text
  end
end
