require 'test_helper'

class AppointmentTypesControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
    @appointment_type = appointment_types(:one)
  end

  test "should get index" do
    get :index, params: { user_id: @user }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { user_id: @user }
    assert_response :success
  end

  test "should create appointment_type" do
    assert_difference('AppointmentType.count') do
      post :create, params: { user_id: @user, appointment_type: @appointment_type.attributes }
    end

    assert_redirected_to user_appointment_type_path(@user, AppointmentType.last)
  end

  test "should show appointment_type" do
    get :show, params: { user_id: @user, id: @appointment_type }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { user_id: @user, id: @appointment_type }
    assert_response :success
  end

  test "should update appointment_type" do
    put :update, params: { user_id: @user, id: @appointment_type, appointment_type: @appointment_type.attributes }
    assert_redirected_to user_appointment_type_path(@user, AppointmentType.last)
  end

  test "should destroy appointment_type" do
    assert_difference('AppointmentType.count', -1) do
      delete :destroy, params: { user_id: @user, id: @appointment_type }
    end

    assert_redirected_to user_appointment_types_path(@user)
  end
end
