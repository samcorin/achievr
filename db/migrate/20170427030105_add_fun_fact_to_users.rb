class AddFunFactToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :fun_fact, :text
  end
end
