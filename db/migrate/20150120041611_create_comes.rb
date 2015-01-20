class CreateComes < ActiveRecord::Migration
  def change
    create_table :comes do |t|
      t.text :content
      t.references :game, index: true

      t.timestamps
    end
  end
end
