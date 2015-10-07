require 'test_helper'

class ReservationsControllerTest < ActionController::TestCase
  setup do
    @reservation = reservations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reservations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reservation" do
    assert_difference('Reservation.count') do
      post :create, reservation: { cost: @reservation.cost, districtarrival: @reservation.districtarrival, dni: @reservation.dni, driver_id: @reservation.driver_id, lastnameandname: @reservation.lastnameandname, mail: @reservation.mail, phone1: @reservation.phone1, phone2: @reservation.phone2, point: @reservation.point, pointofarrival: @reservation.pointofarrival, reservationdate: @reservation.reservationdate, startingdistrict: @reservation.startingdistrict, status_id: @reservation.status_id, vehicle_id: @reservation.vehicle_id, whenbooking: @reservation.whenbooking }
    end

    assert_redirected_to reservation_path(assigns(:reservation))
  end

  test "should show reservation" do
    get :show, id: @reservation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reservation
    assert_response :success
  end

  test "should update reservation" do
    patch :update, id: @reservation, reservation: { cost: @reservation.cost, districtarrival: @reservation.districtarrival, dni: @reservation.dni, driver_id: @reservation.driver_id, lastnameandname: @reservation.lastnameandname, mail: @reservation.mail, phone1: @reservation.phone1, phone2: @reservation.phone2, point: @reservation.point, pointofarrival: @reservation.pointofarrival, reservationdate: @reservation.reservationdate, startingdistrict: @reservation.startingdistrict, status_id: @reservation.status_id, vehicle_id: @reservation.vehicle_id, whenbooking: @reservation.whenbooking }
    assert_redirected_to reservation_path(assigns(:reservation))
  end

  test "should destroy reservation" do
    assert_difference('Reservation.count', -1) do
      delete :destroy, id: @reservation
    end

    assert_redirected_to reservations_path
  end
end
