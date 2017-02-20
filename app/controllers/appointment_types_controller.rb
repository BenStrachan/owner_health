class AppointmentTypesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_appointment_types
  before_action :set_appointment_type, only: [:show, :edit, :update, :destroy]

  # GET users/1/appointment_types
  def index
    @appointment_types = @user.appointment_types
  end

  # GET users/1/appointment_types/1
  def show
  end

  # GET users/1/appointment_types/new
  def new
    @appointment_type = @user.appointment_types.build
  end

  # GET users/1/appointment_types/1/edit
  def edit
  end

  # POST users/1/appointment_types
  def create
    @appointment_type = @user.appointment_types.build(appointment_type_params)

    if @appointment_type.save
      redirect_to(@appointment_type, notice: 'Appointment type was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT users/1/appointment_types/1
  def update
    if @appointment_type.update_attributes(appointment_type_params)
      redirect_to(@appointment_type, notice: 'Appointment type was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE users/1/appointment_types/1
  def destroy
    @appointment_type.destroy

    redirect_to user_appointment_types_url(@user)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment_types
      @user = current_user
    end

    def set_appointment_type
      @appointment_type = @user.appointment_types.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def appointment_type_params
      params.require(:appointment_type).permit(:name, :description, :price, :item_number, :duration)
    end
end
