class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.references :user, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :street_address
      t.string :city
      t.string :state
      t.string :postocde
      t.string :country
      t.float :longitude
      t.float :latitude
      t.string :home_phone
      t.string :mobile_phone
      t.string :work_phone
      t.string :email

      t.timestamps
    end
  end
end
