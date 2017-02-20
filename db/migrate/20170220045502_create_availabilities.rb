class CreateAvailabilities < ActiveRecord::Migration[5.0]
  def change
    create_table :availabilities do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.datetime :start
      t.datetime :end
      t.integer :max_appointment
      t.integer :service_radius
      t.float :longitude
      t.float :latitude
      t.string :street_address
      t.string :city
      t.string :state
      t.string :postcode
      t.string :country
      t.string :repeat_frequency
      t.integer :repeat_total
      t.string :appointment_id

      t.timestamps
    end
  end
end
