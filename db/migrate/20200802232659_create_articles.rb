class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :user_id
      t.string :title
      t.text :body
      t.string :thumnail_url
      t.string :public_date
      t.references :article_category, null: false, foreign_key: true
      t.boolean :is_public
      t.text :tag, array: true, default: []
      t.boolean :has_series
      t.integer :series_id
      t.integer :episode_num

      t.timestamps
    end
    add_index :articles, :user_id
    add_index :articles, :title
    add_index :articles, :is_public
    add_index :articles, :has_series
  end
end
