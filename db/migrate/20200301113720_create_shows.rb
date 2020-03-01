class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.time :show_time
      t.integer :show_fee
      t.references :movie_id, index: true
      t.references :theatre_id, index: true

      t.timestamps
    end
  end
end
