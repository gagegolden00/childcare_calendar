class AddYearToNotes < ActiveRecord::Migration[7.0]
  def change
    add_reference :notes, :year, null: false, foreign_key: true
  end
end
