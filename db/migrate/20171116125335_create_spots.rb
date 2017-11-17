class CreateSpots < ActiveRecord::Migration[5.1]
  def change
    create_table :spots do |t|

      t.references  :region,      index: true

      t.integer     :spot_id,     default: 0
      t.string      :name,        default: ""
      t.boolean     :indoor,      default: false
      t.float       :lat,         default: 0.0
      t.float       :lng,         default: 0.0

      t.timestamps
    end
  end
end
