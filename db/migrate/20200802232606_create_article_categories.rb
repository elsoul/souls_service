class CreateArticleCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :article_categories do |t|
      t.string :name
      t.integer :total_articles
      t.text :tag, array: true, default: []

      t.timestamps
    end
  end
end
