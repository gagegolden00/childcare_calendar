class AddStatusToDay < ActiveRecord::Migration[7.0]
  def change
    add_column :days, :status, :integer, null: false, default: 0
  end
end
