class User < ApplicationRecord
    belongs_to :city
    has_many :gossips
    has_many :sent_messages, foreign_key: 'sender_id', class_name: "PrivateMessage"
    has_many :received_messages, foreign_key: 'recipient_id', class_name: "PrivateMessage"
    validates :first_name, presence: true, length: { in: 3..14 }
    validates :last_name, presence: true, length: { in: 3..14 }
    validates :description, presence: true, length: { in: 15..100 }
    validates :email, presence: true, uniqueness: true
    validates :age, presence: true
    has_secure_password
end