class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :start_rent_at
      t.date :end_rent_at
      t.references :user_id, null: false, foreign_key: true
      t.references :dress_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
