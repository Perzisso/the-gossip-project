class City < ApplicationRecord
    has_many :users
    validates :name, presence: true
    validates :zip_code, presence: true
    validates :name, length: { minimum: 2 }
    validates :zip_code, length: { minimum: 4 }
end
