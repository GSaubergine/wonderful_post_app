class Article < ApplicationRecord
  has_many :tag_articles, dependent: :destroy
  has_many :tags, through: :tag_articles
  validates :title, :content, presence: true
  belongs_to :user
end
