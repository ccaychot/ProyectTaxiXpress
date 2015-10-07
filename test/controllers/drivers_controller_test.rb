require 'test_helper'

class DriversControllerTest < ActionController::TestCase
  setup do
    @driver = drivers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drivers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create driver" do
    assert_difference('Driver.count') do
      post :create, driver: { address: @driver.address, birthdate: @driver.birthdate, category_id: @driver.category_id, class1: @driver.class1, dateexpiry: @driver.dateexpiry, expeditiondate: @driver.expeditiondate, identity: @driver.identity, lastname: @driver.lastname, numberlicense: @driver.numberlicense, revalidationdate: @driver.revalidationdate, sex_id: @driver.sex_id, status_id: @driver.status_id }
    end

    assert_redirected_to driver_path(assigns(:driver))
  end

  test "should show driver" do
    get :show, id: @driver
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @driver
    assert_response :success
  end

  test "should update driver" do
    patch :update, id: @driver, driver: { address: @driver.address, birthdate: @driver.birthdate, category_id: @driver.category_id, class1: @driver.class1, dateexpiry: @driver.dateexpiry, expeditiondate: @driver.expeditiondate, identity: @driver.identity, lastname: @driver.lastname, numberlicense: @driver.numberlicense, revalidationdate: @driver.revalidationdate, sex_id: @driver.sex_id, status_id: @driver.status_id }
    assert_redirected_to driver_path(assigns(:driver))
  end

  test "should destroy driver" do
    assert_difference('Driver.count', -1) do
      delete :destroy, id: @driver
    end

    assert_redirected_to drivers_path
  end
end
