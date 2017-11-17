class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|

      t.integer   :kakao_id,              default: 0
      t.string    :nickname,              default: ""
      t.string    :email,                 default: ""
      t.string    :profile_image_url,     default: ""
      t.string    :thumbnail_image_url,   default: ""

      t.boolean   :active,                default: true

      t.timestamps
    end
  end
end
