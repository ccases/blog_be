class Article < ApplicationRecord
  validates :title, :author, :content, presence: true
  validates :title, uniqueness: {scope: :title, message: "should be unique"}
  has_many :comments, dependent: :destroy

  has_and_belongs_to_many :tags
  has_many :sections
  has_many :advertisements, through: :sections
  has_and_belongs_to_many :categories
end
