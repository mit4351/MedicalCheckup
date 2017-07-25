require 'test_helper'

class MedicalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medical = medicals(:one)
  end

  test "should get index" do
    get medicals_url
    assert_response :success
  end

  test "should get new" do
    get new_medical_url
    assert_response :success
  end

  test "should create medical" do
    assert_difference('Medical.count') do
      post medicals_url, params: { medical: { deleteflg: @medical.deleteflg, end_application_period: @medical.end_application_period, end_implementation_period: @medical.end_implementation_period, name: @medical.name, remarks: @medical.remarks, str_application_period: @medical.str_application_period, str_implementation_period: @medical.str_implementation_period } }
    end

    assert_redirected_to medical_url(Medical.last)
  end

  test "should show medical" do
    get medical_url(@medical)
    assert_response :success
  end

  test "should get edit" do
    get edit_medical_url(@medical)
    assert_response :success
  end

  test "should update medical" do
    patch medical_url(@medical), params: { medical: { deleteflg: @medical.deleteflg, end_application_period: @medical.end_application_period, end_implementation_period: @medical.end_implementation_period, name: @medical.name, remarks: @medical.remarks, str_application_period: @medical.str_application_period, str_implementation_period: @medical.str_implementation_period } }
    assert_redirected_to medical_url(@medical)
  end

  test "should destroy medical" do
    assert_difference('Medical.count', -1) do
      delete medical_url(@medical)
    end

    assert_redirected_to medicals_url
  end
end
