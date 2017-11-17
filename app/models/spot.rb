class Spot < ApplicationRecord
  belongs_to :region
  has_many :flags, dependent: :destroy
  has_many :flagged_users, through: :flags, source: :user
end
