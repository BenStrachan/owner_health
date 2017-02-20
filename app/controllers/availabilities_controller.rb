class AvailabilitiesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_availabilities
  before_action :set_availability, only: [:show, :edit, :update, :destroy]

  # GET users/1/availabilities
  def index
    @availabilities = @user.availabilities
  end

  # GET users/1/availabilities/1
  def show
  end

  # GET users/1/availabilities/new
  def new
    @availability = @user.availabilities.build
  end

  # GET users/1/availabilities/1/edit
  def edit
  end

  # POST users/1/availabilities
  def create
    @availability = @user.availabilities.build(availability_params)

    if @availability.save
      redirect_to(@availability, notice: 'Availability was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT users/1/availabilities/1
  def update
    if @availability.update_attributes(availability_params)
      redirect_to(@availability, notice: 'Availability was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE users/1/availabilities/1
  def destroy
    @availability.destroy

    redirect_to availabilities_url(@user)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_availabilities
      @user = current_user
    end

    def set_availability
      @availability = @user.availabilities.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def availability_params
      params.require(:availability).permit(:name, :start, :end, :max_appointment, :service_radius, :longitude, :latitude, :street_address, :city, :state, :postcode, :country, :repeat_frequency, :repeat_total, :appointment_id)
    end
end
