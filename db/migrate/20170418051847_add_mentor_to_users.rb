class AddMentorToUsers < ActiveRecord::Migration[5.0]
  def change
    # add_reference :users, :mentor, foreign_key: true
    add_column :users, :mentor_id, :integer
    add_foreign_key :users, :users, column: :mentor_id
    add_index :users, :mentor_id
  end
end
