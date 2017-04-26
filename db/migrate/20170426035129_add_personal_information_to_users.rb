class AddPersonalInformationToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :prefecture, :string
    add_column :users, :postal_code, :integer
    add_column :users, :bank_account_number, :integer
    add_column :users, :social_security_number, :integer
    add_column :users, :person_to_contact, :string
    add_column :users, :birthday, :date
  end
end
