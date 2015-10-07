require 'test_helper'

class Class1sControllerTest < ActionController::TestCase
  setup do
    @class1 = class1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:class1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create class1" do
    assert_difference('Class1.count') do
      post :create, class1: { description: @class1.description }
    end

    assert_redirected_to class1_path(assigns(:class1))
  end

  test "should show class1" do
    get :show, id: @class1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @class1
    assert_response :success
  end

  test "should update class1" do
    patch :update, id: @class1, class1: { description: @class1.description }
    assert_redirected_to class1_path(assigns(:class1))
  end

  test "should destroy class1" do
    assert_difference('Class1.count', -1) do
      delete :destroy, id: @class1
    end

    assert_redirected_to class1s_path
  end
end
