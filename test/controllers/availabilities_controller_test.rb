require 'test_helper'

class AvailabilitiesControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
    @availability = availabilities(:one)
  end

  test "should get index" do
    get :index, params: { user_id: @user }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { user_id: @user }
    assert_response :success
  end

  test "should create availability" do
    assert_difference('Availability.count') do
      post :create, params: { user_id: @user, availability: @availability.attributes }
    end

    assert_redirected_to user_availability_path(@user, Availability.last)
  end

  test "should show availability" do
    get :show, params: { user_id: @user, id: @availability }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { user_id: @user, id: @availability }
    assert_response :success
  end

  test "should update availability" do
    put :update, params: { user_id: @user, id: @availability, availability: @availability.attributes }
    assert_redirected_to user_availability_path(@user, Availability.last)
  end

  test "should destroy availability" do
    assert_difference('Availability.count', -1) do
      delete :destroy, params: { user_id: @user, id: @availability }
    end

    assert_redirected_to user_availabilities_path(@user)
  end
end
