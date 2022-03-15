class Individual < ApplicationRecord
  has_many :role_helds
  has_one_attached :photo
end
