class TreatmentNotesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_patients
  before_action :set_treatment_notes
  before_action :set_treatment_note, only: [:show, :edit, :update, :destroy]

  # GET patients/1/treatment_notes
  def index
    @treatment_notes = @patient.treatment_notes
  end

  # GET patients/1/treatment_notes/1
  def show
  end

  # GET patients/1/treatment_notes/new
  def new
    @treatment_note = @patient.treatment_notes.build
  end

  # GET patients/1/treatment_notes/1/edit
  def edit
  end

  # POST patients/1/treatment_notes
  def create
    @treatment_note = @patient.treatment_notes.build(treatment_note_params)

    if @treatment_note.save
      redirect_to([@treatment_note.patient, @treatment_note], notice: 'Treatment note was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT patients/1/treatment_notes/1
  def update
    if @treatment_note.update_attributes(treatment_note_params)
      redirect_to([@treatment_note.patient, @treatment_note], notice: 'Treatment note was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE patients/1/treatment_notes/1
  def destroy
    @treatment_note.destroy

    redirect_to patient_treatment_notes_url(@patient)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_treatment_notes
      @patient = Patient.find(params[:patient_id])
    end

    def set_patients
      @user = current_user
    end

    def set_patient
      @patient = @user.patients.find(params[:id])
    end

    def set_treatment_note
      @treatment_note = @patient.treatment_notes.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def treatment_note_params
      params.require(:treatment_note).permit(:appointment, :practitioner, :text)
    end
end
