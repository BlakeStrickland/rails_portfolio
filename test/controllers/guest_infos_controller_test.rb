require 'test_helper'

class GuestInfosControllerTest < ActionController::TestCase
  setup do
    @guest_info = guest_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:guest_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create guest_info" do
    assert_difference('GuestInfo.count') do
      post :create, guest_info: { company: @guest_info.company, email: @guest_info.email, name: @guest_info.name, phone_number: @guest_info.phone_number }
    end

    assert_redirected_to guest_info_path(assigns(:guest_info))
  end

  test "should show guest_info" do
    get :show, id: @guest_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @guest_info
    assert_response :success
  end

  test "should update guest_info" do
    patch :update, id: @guest_info, guest_info: { company: @guest_info.company, email: @guest_info.email, name: @guest_info.name, phone_number: @guest_info.phone_number }
    assert_redirected_to guest_info_path(assigns(:guest_info))
  end

  test "should destroy guest_info" do
    assert_difference('GuestInfo.count', -1) do
      delete :destroy, id: @guest_info
    end

    assert_redirected_to guest_infos_path
  end
end
