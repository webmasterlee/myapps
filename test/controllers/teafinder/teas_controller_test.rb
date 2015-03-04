require 'test_helper'

class Teafinder::TeasControllerTest < ActionController::TestCase
  setup do
    @teafinder_tea = teafinder_teas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teafinder_teas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teafinder_tea" do
    assert_difference('Teafinder::Tea.count') do
      post :create, teafinder_tea: { display: @teafinder_tea.display, name: @teafinder_tea.name, tea_style_id: @teafinder_tea.tea_style_id, tea_type_id: @teafinder_tea.tea_type_id }
    end

    assert_redirected_to teafinder_tea_path(assigns(:teafinder_tea))
  end

  test "should show teafinder_tea" do
    get :show, id: @teafinder_tea
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teafinder_tea
    assert_response :success
  end

  test "should update teafinder_tea" do
    patch :update, id: @teafinder_tea, teafinder_tea: { display: @teafinder_tea.display, name: @teafinder_tea.name, tea_style_id: @teafinder_tea.tea_style_id, tea_type_id: @teafinder_tea.tea_type_id }
    assert_redirected_to teafinder_tea_path(assigns(:teafinder_tea))
  end

  test "should destroy teafinder_tea" do
    assert_difference('Teafinder::Tea.count', -1) do
      delete :destroy, id: @teafinder_tea
    end

    assert_redirected_to teafinder_teas_path
  end
end
