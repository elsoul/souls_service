class Article < ActiveRecord::Base
  belongs_to :article_category
  ## Validations
  validates :user_id,
            uniqueness: {
              message: "同じタイトルの記事があります。",
              scope: %i[title]
            }

  # @return [Souls::Article]
  #
  def to_proto
    Souls::Article.new(
      id: id.to_i,
      user_id: user_id.to_s,
      title: title.to_s,
      body: body.to_s,
      thumnail_url: thumnail_url.to_s,
      public_date: public_date.to_s,
      article_category_id: article_category_id.to_i,
      is_public: is_public,
      tag: JSON.parse(tag.to_json),
      has_series: has_series,
      series_id: series_id.to_i,
      episode_num: episode_num.to_i,
      created_at: created_at.to_s,
      updated_at: updated_at.to_s
    )
  end
end
