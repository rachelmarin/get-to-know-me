class Profile < ApplicationRecord
    validates :name, presence: true, length: {in: 1..25 }
end
