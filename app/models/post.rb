class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: { in: %w(Fiction Non-Fiction)}

    validate :title_is_clickbait

    belongs_to :author

  def title_is_clickbait
    errors.add(:title, "Invalid Title") if self.title == "True Facts"
  end

end
