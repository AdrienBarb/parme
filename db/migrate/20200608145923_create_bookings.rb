class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :start_rent_at
      t.date :end_rent_at
      t.references :user, null: false, foreign_key: true
      t.references :dress, null: false, foreign_key: true

      t.timestamps
    end
  end
end
