class Profile < ApplicationRecord
    has_and_belongs_to_many :birthstones
    validates :name, presence: true, length: {in: 1..25 }
    validates :birthdate, presence: true
end
