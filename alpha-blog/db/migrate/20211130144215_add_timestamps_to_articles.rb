class AddTimestampsToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :created_at, :datetime
    add_column :articles, :updateed_at, :datetime
  end
end
