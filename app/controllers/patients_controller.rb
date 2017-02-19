class PatientsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_patients
  before_action :set_patient, only: [:show, :edit, :update, :destroy]

  # GET users/1/patients
  def index
    @patients = @user.patients
  end

  # GET users/1/patients/1
  def show
  end

  # GET users/1/patients/new
  def new
    @patient = @user.patients.build
  end

  # GET users/1/patients/1/edit
  def edit
  end

  # POST users/1/patients
  def create
    @patient = @user.patients.build(patient_params)

    if @patient.save
      redirect_to(@patient, notice: 'Patient was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT users/1/patients/1
  def update
    if @patient.update_attributes(patient_params)
      redirect_to(@patient, notice: 'Patient was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE users/1/patients/1
  def destroy
    @patient.destroy

    redirect_to patients_url(@user)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patients
      @user = current_user
    end

    def set_patient
      @patient = @user.patients.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def patient_params
      params.require(:patient).permit(:first_name, :last_name, :street_address, :city, :state, :postocde, :country, :longitude, :latitude, :home_phone, :mobile_phone, :work_phone, :email)
    end
end
