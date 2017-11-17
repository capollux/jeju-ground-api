class Spot < ApplicationRecord
  belongs_to :region
  has_many :flags, dependent: :destroy
  has_many :flagged_users, through: :flags, source: :user

  before_save :get_region_lat_lng  

  def get_region_lat_lng
    
    if self.indoor
      self.lat = self.region.lat
      self.lat = self.region.lat
    end

  end
end
