class CreateTheatres < ActiveRecord::Migration
  def change
    create_table :theatres do |t|
      t.string :name
      t.integer :seat_limit

      t.timestamps
    end
  end
end
