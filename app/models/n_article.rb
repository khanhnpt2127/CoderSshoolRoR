class NArticle < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: {minimum: 5}
  validates :body,  presence: true
  def self.search(search)
    where("title LIKE ?", "%#{search}%")
  end
end
