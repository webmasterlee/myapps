require 'test_helper'

class Teafinder::TeaStylesControllerTest < ActionController::TestCase
  setup do
    @teafinder_tea_style = teafinder_tea_styles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teafinder_tea_styles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teafinder_tea_style" do
    assert_difference('Teafinder::TeaStyle.count') do
      post :create, teafinder_tea_style: { style: @teafinder_tea_style.style }
    end

    assert_redirected_to teafinder_tea_style_path(assigns(:teafinder_tea_style))
  end

  test "should show teafinder_tea_style" do
    get :show, id: @teafinder_tea_style
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teafinder_tea_style
    assert_response :success
  end

  test "should update teafinder_tea_style" do
    patch :update, id: @teafinder_tea_style, teafinder_tea_style: { style: @teafinder_tea_style.style }
    assert_redirected_to teafinder_tea_style_path(assigns(:teafinder_tea_style))
  end

  test "should destroy teafinder_tea_style" do
    assert_difference('Teafinder::TeaStyle.count', -1) do
      delete :destroy, id: @teafinder_tea_style
    end

    assert_redirected_to teafinder_tea_styles_path
  end
end
