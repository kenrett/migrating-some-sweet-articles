class MoveCategories < ActiveRecord::Migration

  class Article < ActiveRecord::Base
    belongs_to :category
  end

  class Category < ActiveRecord::Base
    has_many :articles
  end

  def change
    Article.all.each do |article|
      title_case = article.new_category.titlecase
      sub_it = title_case.gsub(/\W/, " ")

      new_cat = Category.find_or_create_by_category(sub_it)
      new_cat.articles << article
    end
  end

end
