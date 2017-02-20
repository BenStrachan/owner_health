class CreateTreatmentNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :treatment_notes do |t|
      t.references :patient, foreign_key: true
      t.string :appointment
      t.string :practitioner
      t.text :text

      t.timestamps
    end
  end
end
