class AddCalendarTable < ActiveRecord::Migration[7.0]
  def change
    create_table :calendar do |t|
      t.text :calendar_name
    end
  end
end
