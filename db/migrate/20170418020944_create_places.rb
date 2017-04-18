class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.references :company, foreign_key: true
      t.string :name
      t.string :category
      t.string :address

      t.timestamps
    end
  end
end
