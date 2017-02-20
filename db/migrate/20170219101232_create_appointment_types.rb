class CreateAppointmentTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :appointment_types do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :description
      t.string :price
      t.string :item_number
      t.string :duration

      t.timestamps
    end
  end
end
