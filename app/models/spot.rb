class Spot < ApplicationRecord
  belongs_to :region
  has_many :flags, dependent: :destroy
  has_many :flagged_users, through: :flags, source: :user

  before_save :get_region_lat_lng  

  def get_region_lat_lng
    
    if self.indoor
      self.lat = self.region.lat
      self.lng = self.region.lng
    end

  end

  def activate!
    self.active = true
    self.save
  end

  def deactivate!
    self.active = false
    self.save
  end
end
