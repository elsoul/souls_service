class ArticleSeriesCategory < ActiveRecord::Base
  has_many :article_series, dependent: :destroy
end
