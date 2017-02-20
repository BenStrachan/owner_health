require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
    @profile = profiles(:one)
  end

  test "should get index" do
    get :index, params: { user_id: @user }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { user_id: @user }
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post :create, params: { user_id: @user, profile: @profile.attributes }
    end

    assert_redirected_to user_profile_path(@user, Profile.last)
  end

  test "should show profile" do
    get :show, params: { user_id: @user, id: @profile }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { user_id: @user, id: @profile }
    assert_response :success
  end

  test "should update profile" do
    put :update, params: { user_id: @user, id: @profile, profile: @profile.attributes }
    assert_redirected_to user_profile_path(@user, Profile.last)
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete :destroy, params: { user_id: @user, id: @profile }
    end

    assert_redirected_to user_profiles_path(@user)
  end
end
