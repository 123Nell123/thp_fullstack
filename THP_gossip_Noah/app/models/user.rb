class User < ApplicationRecord
    belongs_to :city, optional: true
    has_many :private_messages
    has_many :gossips
    has_many :sent_messages, foreign_key: 'sender_id', class_name: "PrivateMessage"
    has_many :received_messages, foreign_key: 'recipient_id', class_name: "PrivateMessage"
    has_many :comments
    has_many :likes
    validates :last_name, presence: true
    validates :first_name, presence: true
    validates :login, presence: true, uniqueness: true, length: {minimum: 3, maximum: 14}
    validates :email, presence: true, uniqueness: true
    has_secure_password
end
