class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.references :show, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
