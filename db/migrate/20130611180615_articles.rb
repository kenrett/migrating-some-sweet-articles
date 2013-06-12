class Articles < ActiveRecord::Migration
  def change
    create_table :new_articles do |t|
      t.string :title
      t.text :description
      t.string :url
      t.integer :category_id
    end
  end
end
