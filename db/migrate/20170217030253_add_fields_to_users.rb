class AddFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :street_address, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :postcode, :string
    add_column :users, :country, :string
    add_column :users, :longitude, :float
    add_column :users, :latitude, :float
    add_column :users, :business_name, :string
    add_column :users, :ahpra, :string
    add_column :users, :medicare_provider_number, :string
    add_column :users, :website, :string
    add_column :users, :phone, :string
    add_column :users, :mobile, :string
    add_column :users, :business_email, :string
    add_column :users, :fax, :string
  end
end
