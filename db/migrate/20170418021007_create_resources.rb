class CreateResources < ActiveRecord::Migration[5.0]
  def change
    create_table :resources do |t|
      t.references :team, foreign_key: true
      t.string :name
      t.string :photo
      t.string :url

      t.timestamps
    end
  end
end
