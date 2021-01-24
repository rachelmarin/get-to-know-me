class CreateBirthstones < ActiveRecord::Migration[6.1]
  def change
    create_table :birthstones do |t|
      t.text :stone

      t.timestamps
    end
  end
end
