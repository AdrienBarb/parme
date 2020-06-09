class ChangeColumnDefault < ActiveRecord::Migration[6.0]
  def change
    change_column_default :dresses, :available, from: nil, to: true
  end
end
