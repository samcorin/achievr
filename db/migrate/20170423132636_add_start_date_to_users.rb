class AddStartDateToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :start_date, :datetime, null: false, default: "2017-05-1 09:00:00 +0900"
  end
end
