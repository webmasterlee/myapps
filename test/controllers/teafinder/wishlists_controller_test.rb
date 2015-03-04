require 'test_helper'

class Teafinder::WishlistsControllerTest < ActionController::TestCase
  setup do
    @teafinder_wishlist = teafinder_wishlists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teafinder_wishlists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teafinder_wishlist" do
    assert_difference('Teafinder::Wishlist.count') do
      post :create, teafinder_wishlist: { name: @teafinder_wishlist.name, notes: @teafinder_wishlist.notes, url: @teafinder_wishlist.url }
    end

    assert_redirected_to teafinder_wishlist_path(assigns(:teafinder_wishlist))
  end

  test "should show teafinder_wishlist" do
    get :show, id: @teafinder_wishlist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teafinder_wishlist
    assert_response :success
  end

  test "should update teafinder_wishlist" do
    patch :update, id: @teafinder_wishlist, teafinder_wishlist: { name: @teafinder_wishlist.name, notes: @teafinder_wishlist.notes, url: @teafinder_wishlist.url }
    assert_redirected_to teafinder_wishlist_path(assigns(:teafinder_wishlist))
  end

  test "should destroy teafinder_wishlist" do
    assert_difference('Teafinder::Wishlist.count', -1) do
      delete :destroy, id: @teafinder_wishlist
    end

    assert_redirected_to teafinder_wishlists_path
  end
end
