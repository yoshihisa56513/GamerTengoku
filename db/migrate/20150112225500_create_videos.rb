class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.text :video_code
      t.text :exp
      t.references :game, index: true

      t.timestamps
    end
  end
end
