class AddYearToMonths < ActiveRecord::Migration[7.0]
  def change
    add_reference :months, :year, null: false, foreign_key: true
  end
end
