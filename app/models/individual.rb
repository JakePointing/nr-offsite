class Individual < ApplicationRecord
  has_many :role_helds
  has_many :achievements
  has_one_attached :photo
end
