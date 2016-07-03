require 'test_helper'

class MyInfosControllerTest < ActionController::TestCase
  setup do
    @my_info = my_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_info" do
    assert_difference('MyInfo.count') do
      post :create, my_info: {  }
    end

    assert_redirected_to my_info_path(assigns(:my_info))
  end

  test "should show my_info" do
    get :show, id: @my_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_info
    assert_response :success
  end

  test "should update my_info" do
    patch :update, id: @my_info, my_info: {  }
    assert_redirected_to my_info_path(assigns(:my_info))
  end

  test "should destroy my_info" do
    assert_difference('MyInfo.count', -1) do
      delete :destroy, id: @my_info
    end

    assert_redirected_to my_infos_path
  end
end
