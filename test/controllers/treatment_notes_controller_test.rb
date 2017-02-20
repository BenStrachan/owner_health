require 'test_helper'

class TreatmentNotesControllerTest < ActionController::TestCase
  setup do
    @patient = patients(:one)
    @treatment_note = treatment_notes(:one)
  end

  test "should get index" do
    get :index, params: { patient_id: @patient }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { patient_id: @patient }
    assert_response :success
  end

  test "should create treatment_note" do
    assert_difference('TreatmentNote.count') do
      post :create, params: { patient_id: @patient, treatment_note: @treatment_note.attributes }
    end

    assert_redirected_to patient_treatment_note_path(@patient, TreatmentNote.last)
  end

  test "should show treatment_note" do
    get :show, params: { patient_id: @patient, id: @treatment_note }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { patient_id: @patient, id: @treatment_note }
    assert_response :success
  end

  test "should update treatment_note" do
    put :update, params: { patient_id: @patient, id: @treatment_note, treatment_note: @treatment_note.attributes }
    assert_redirected_to patient_treatment_note_path(@patient, TreatmentNote.last)
  end

  test "should destroy treatment_note" do
    assert_difference('TreatmentNote.count', -1) do
      delete :destroy, params: { patient_id: @patient, id: @treatment_note }
    end

    assert_redirected_to patient_treatment_notes_path(@patient)
  end
end
