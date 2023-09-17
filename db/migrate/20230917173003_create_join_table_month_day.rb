class CreateJoinTableMonthDay < ActiveRecord::Migration[7.0]
  def change
    create_join_table :months, :days do |t|
      t.index [:month_id, :day_id]
      t.index [:day_id, :month_id]
    end
  end
end
