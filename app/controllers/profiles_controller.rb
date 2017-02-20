class ProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_profiles
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  # GET users/1/profiles
  def index
    @profiles = @user.profiles
  end

  # GET users/1/profiles/1
  def show
  end

  # GET users/1/profiles/new
  def new
    @profile = @user.profiles.build
  end

  # GET users/1/profiles/1/edit
  def edit
  end

  # POST users/1/profiles
  def create
    @profile = @user.profiles.build(profile_params)

    if @profile.save
      redirect_to(@profile, notice: 'Profile was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT users/1/profiles/1
  def update
    if @profile.update_attributes(profile_params)
      redirect_to(@profile, notice: 'Profile was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE users/1/profiles/1
  def destroy
    @profile.destroy

    redirect_to profiles_url(@user)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profiles
      @user = current_user
    end

    def set_profile
      @profile = @user.profiles.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def profile_params
      params.require(:profile).permit(:first_name, :last_name, :business_name, :phone, :mobile, :email, :website, :street_address, :city, :state, :postcode, :country, :latitude, :longitude, :AHPRA, :medicare)
    end
end
