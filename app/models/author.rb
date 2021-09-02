class Author < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :phone_number, length: { is:10 }
    # validates_length_of :phone_number, :maximum => 10
    # validates_length_of :phone_number, :minimum => 10

    has_many :posts
end
