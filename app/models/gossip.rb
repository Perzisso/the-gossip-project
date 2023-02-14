class Gossip < ApplicationRecord
    belongs_to :user, required: false
    belongs_to :tag_gossip, required: false
    has_many :tags, through: :tag_gossips
    validates :title, presence: true
    validates :title, length: { in: 3..14 }
    validates :content, presence: true
end
