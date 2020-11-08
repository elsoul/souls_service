class CreateArticleSeriesCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :article_series_categories do |t|
      t.string :name
      t.integer :total_article_series
      t.text :description

      t.timestamps
    end
  end
end
