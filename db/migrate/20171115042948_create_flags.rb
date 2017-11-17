class CreateFlags < ActiveRecord::Migration[5.1]
  def change
    create_table :flags do |t|

      t.references :user,  index: true
      t.references :spot,  index: true

      t.timestamps
    end
  end
end
