class Article < ApplicationRecord
  validates :title, :author, :content, presence: true
  validates :title, uniqueness: {scope: :title, message: "should be unique"}
  has_many :comments, dependent: :destroy

  has_and_belongs_to_many :tags
  has_many :sections
  has_many :advertisements, through: :sections
  has_and_belongs_to_many :categories
  
  before_validation :set_content
  
  after_create :create_default_comment

  def set_content
    self.content = 'Default content' if self.content.nil? || self.content.blank?
  end

  def create_default_comment
    Comment.create(article: self, content:"Excellent work!")
  end
end
