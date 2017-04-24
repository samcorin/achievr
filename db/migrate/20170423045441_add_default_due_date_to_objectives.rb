class AddDefaultDueDateToObjectives < ActiveRecord::Migration[5.0]
  def change
    change_column :objectives, :due_date, :datetime, :default => DateTime.now
  end
end
