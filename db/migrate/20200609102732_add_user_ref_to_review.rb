class AddUserRefToReview < ActiveRecord::Migration[6.0]
  def change
    add_reference :reviews, :user, foreign_key: true, null: false
  end
end
