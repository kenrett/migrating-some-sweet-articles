class AddtoTagModel < ActiveRecord::Migration
  class Article < ActiveRecord::Base
    has_and_belongs_to_many :tags
  end

  class Tag < ActiveRecord::Base
    has_and_belongs_to_many :articles
  end
  
  Article.all.each do |article|
    tag_arr = article.new_tags.split(",").map { |word| word.strip } # returns array of tags without spaces
    
    tag_arr.each do |split_tags|
      make_tag = Tag.find_or_create_by_tag(split_tags)
      article.tags << make_tag
    end
  end

end
