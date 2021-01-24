class CreateBirthstonesProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :birthstones_profiles do |t|
      t.references :birthstone, null: false, foreign_key: true
      t.references :profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
