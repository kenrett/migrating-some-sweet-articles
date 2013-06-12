class RemoveTagsArticleCol < ActiveRecord::Migration
  def change
    remove_column :articles, :new_tags
  end
end
