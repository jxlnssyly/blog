class AddVisitToArticle < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :visit, :integer
  end
end
