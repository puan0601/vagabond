class AddTagsAndAvatarsToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :avatar, :string
    add_column :articles, :tag, :text, array: true, default: []
  end
end
