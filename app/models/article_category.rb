class ArticleCategory < ActiveRecord::Base
  has_many :article, dependent: :destroy
  ## Validations
  validates :name, uniqueness: true
end
