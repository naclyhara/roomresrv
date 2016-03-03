class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.references :office, index: true, foreign_key: true
      t.string :name

      t.timestamps null: false
    end
  end
end
