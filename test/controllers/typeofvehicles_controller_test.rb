require 'test_helper'

class TypeofvehiclesControllerTest < ActionController::TestCase
  setup do
    @typeofvehicle = typeofvehicles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:typeofvehicles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create typeofvehicle" do
    assert_difference('Typeofvehicle.count') do
      post :create, typeofvehicle: { description: @typeofvehicle.description }
    end

    assert_redirected_to typeofvehicle_path(assigns(:typeofvehicle))
  end

  test "should show typeofvehicle" do
    get :show, id: @typeofvehicle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @typeofvehicle
    assert_response :success
  end

  test "should update typeofvehicle" do
    patch :update, id: @typeofvehicle, typeofvehicle: { description: @typeofvehicle.description }
    assert_redirected_to typeofvehicle_path(assigns(:typeofvehicle))
  end

  test "should destroy typeofvehicle" do
    assert_difference('Typeofvehicle.count', -1) do
      delete :destroy, id: @typeofvehicle
    end

    assert_redirected_to typeofvehicles_path
  end
end
