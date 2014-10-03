class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.integer :user_id
      t.integer :property_id
      t.boolean :confirmed

      t.timestamps
    end
  end
end
