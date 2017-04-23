class CreateObjectives < ActiveRecord::Migration[5.0]
  def change
    create_table :objectives do |t|
      t.string :name
      t.datetime :due_date
      t.references :user, foreign_key: true
      t.boolean :completed, default: false
      t.string :status, default: "Not Started"

      t.timestamps
    end
  end
end
