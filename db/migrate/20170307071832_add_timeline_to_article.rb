class AddTimelineToArticle < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :timeline, :string
  end
end
