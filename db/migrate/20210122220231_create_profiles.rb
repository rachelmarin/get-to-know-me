class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :name
      t.date :birthdate
      t.text :azodiac
      t.text :czodiac
      t.text :lifepathnumber
      t.string :birthstone
      t.text :luckyflower
      t.text :tea

      t.timestamps
    end
  end
end
