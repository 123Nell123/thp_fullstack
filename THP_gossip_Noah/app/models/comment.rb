class Comment < ApplicationRecord
    has_many :likes
    belongs_to :user
    belongs_to :gossip
    validates :content, presence: true
end
