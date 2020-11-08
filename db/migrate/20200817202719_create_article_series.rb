class CreateArticleSeries < ActiveRecord::Migration[6.0]
  def change
    create_table :article_series do |t|
      t.string :name, null: false
      t.references :article_series_category, null: false, foreign_key: true
      t.integer :total_episodes, default: 0
      t.text :description

      t.timestamps
    end
    add_index :article_series, :name
  end
end
