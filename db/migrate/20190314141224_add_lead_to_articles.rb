class AddLeadToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :lead, :text
  end
end
