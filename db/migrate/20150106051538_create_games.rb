class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :gname
      t.string :gcate
      t.text :exp

      t.timestamps
    end
  end
end
