json.extract! patient_treatment_note, :id, :appointment, :practitioner, :text, :created_at, :updated_at
json.url patient_treatment_note_url(patient_treatment_note, format: :json)