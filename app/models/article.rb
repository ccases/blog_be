class Article < ApplicationRecord
  validates :title, :author, :content, presence: true
  validates :title, uniqueness: {scope: :title, message: "should be unique"}
  has_many :comments, dependent: :destroy
end
