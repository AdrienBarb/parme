class CreateDresses < ActiveRecord::Migration[6.0]
  def change
    create_table :dresses do |t|
      t.string :brand
      t.string :color
      t.string :size
      t.integer :price
      t.string :description
      t.boolean :availibilty
      t.references :user_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
