class RoleHeld < ApplicationRecord
  belongs_to :individual
  has_one_attached :logo
end
