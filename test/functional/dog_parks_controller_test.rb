require 'test_helper'

class DogParksControllerTest < ActionController::TestCase
  setup do
    @dog_park = dog_parks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dog_parks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dog_park" do
    assert_difference('DogPark.count') do
      post :create, dog_park: { addr: @dog_park.addr, lati: @dog_park.lati, longi: @dog_park.longi, name: @dog_park.name }
    end

    assert_redirected_to dog_park_path(assigns(:dog_park))
  end

  test "should show dog_park" do
    get :show, id: @dog_park
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dog_park
    assert_response :success
  end

  test "should update dog_park" do
    put :update, id: @dog_park, dog_park: { addr: @dog_park.addr, lati: @dog_park.lati, longi: @dog_park.longi, name: @dog_park.name }
    assert_redirected_to dog_park_path(assigns(:dog_park))
  end

  test "should destroy dog_park" do
    assert_difference('DogPark.count', -1) do
      delete :destroy, id: @dog_park
    end

    assert_redirected_to dog_parks_path
  end
end
