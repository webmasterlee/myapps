require 'test_helper'

class Teafinder::TeaTypesControllerTest < ActionController::TestCase
  setup do
    @teafinder_tea_type = teafinder_tea_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teafinder_tea_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teafinder_tea_type" do
    assert_difference('Teafinder::TeaType.count') do
      post :create, teafinder_tea_type: { type_name: @teafinder_tea_type.type_name }
    end

    assert_redirected_to teafinder_tea_type_path(assigns(:teafinder_tea_type))
  end

  test "should show teafinder_tea_type" do
    get :show, id: @teafinder_tea_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teafinder_tea_type
    assert_response :success
  end

  test "should update teafinder_tea_type" do
    patch :update, id: @teafinder_tea_type, teafinder_tea_type: { type_name: @teafinder_tea_type.type_name }
    assert_redirected_to teafinder_tea_type_path(assigns(:teafinder_tea_type))
  end

  test "should destroy teafinder_tea_type" do
    assert_difference('Teafinder::TeaType.count', -1) do
      delete :destroy, id: @teafinder_tea_type
    end

    assert_redirected_to teafinder_tea_types_path
  end
end
