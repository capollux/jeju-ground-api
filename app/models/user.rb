class User < ApplicationRecord
  has_many :flags, dependent: :destroy
  has_many :visited_spots, through: :flags, source: :spot

  def activate
    self.active = true
    self.save
  end

  def inactivate
    self.active = false
    self.save
  end
end
