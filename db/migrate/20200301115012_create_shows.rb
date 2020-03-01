class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.datetime :show_time
      t.integer :show_fee
      t.references :movie, index: true
      t.references :theatre, index: true

      t.timestamps
    end
  end
end
