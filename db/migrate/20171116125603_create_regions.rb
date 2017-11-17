class CreateRegions < ActiveRecord::Migration[5.1]
  def change
    create_table :regions do |t|

      t.integer     :region_id,   default: 0
      t.string      :name,        default: ''
      t.float       :lat,         default: 0.0
      t.float       :lng,         default: 0.0
      t.string      :geohash,     default: ''
      t.integer     :radius,      default: 0

      t.timestamps
    end
  end
end
