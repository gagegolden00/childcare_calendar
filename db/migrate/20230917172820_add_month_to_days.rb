class AddMonthToDays < ActiveRecord::Migration[7.0]
  def change
    add_reference :days, :month, null: false, foreign_key: true
  end
end
