class Gossip < ApplicationRecord
    belongs_to :user
    has_many :gossip_taggeds
    has_many :tags, through: :gossip_taggeds
    has_many :comments
    has_many :likes
    validates :title, presence: true, length: { in: 3..14 }
    validates :content, presence: true
end
