class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :business_name
      t.string :phone
      t.string :mobile
      t.string :email
      t.string :website
      t.string :street_address
      t.string :city
      t.string :state
      t.string :postcode
      t.string :country
      t.float :latitude
      t.float :longitude
      t.string :AHPRA
      t.string :medicare

      t.timestamps
    end
  end
end
