class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.date :beginning_of_rental
      t.date :end_of_rental
      t.references :robot, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
