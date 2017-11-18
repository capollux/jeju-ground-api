class AddColumnToSpot < ActiveRecord::Migration[5.1]
  def change
    add_column :spots, :active, :boolean, default: false
  end
end
