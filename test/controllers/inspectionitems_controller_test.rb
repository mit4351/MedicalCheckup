require 'test_helper'

class InspectionitemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inspectionitem = inspectionitems(:one)
  end

  test "should get index" do
    get inspectionitems_url
    assert_response :success
  end

  test "should get new" do
    get new_inspectionitem_url
    assert_response :success
  end

  test "should create inspectionitem" do
    assert_difference('Inspectionitem.count') do
      post inspectionitems_url, params: { inspectionitem: { amountofmone: @inspectionitem.amountofmone, deleteflg: @inspectionitem.deleteflg, hospitalflg: @inspectionitem.hospitalflg, name: @inspectionitem.name, number: @inspectionitem.number, remarks: @inspectionitem.remarks, subsidy: @inspectionitem.subsidy } }
    end

    assert_redirected_to inspectionitem_url(Inspectionitem.last)
  end

  test "should show inspectionitem" do
    get inspectionitem_url(@inspectionitem)
    assert_response :success
  end

  test "should get edit" do
    get edit_inspectionitem_url(@inspectionitem)
    assert_response :success
  end

  test "should update inspectionitem" do
    patch inspectionitem_url(@inspectionitem), params: { inspectionitem: { amountofmone: @inspectionitem.amountofmone, deleteflg: @inspectionitem.deleteflg, hospitalflg: @inspectionitem.hospitalflg, name: @inspectionitem.name, number: @inspectionitem.number, remarks: @inspectionitem.remarks, subsidy: @inspectionitem.subsidy } }
    assert_redirected_to inspectionitem_url(@inspectionitem)
  end

  test "should destroy inspectionitem" do
    assert_difference('Inspectionitem.count', -1) do
      delete inspectionitem_url(@inspectionitem)
    end

    assert_redirected_to inspectionitems_url
  end
end
