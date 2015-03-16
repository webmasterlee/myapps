class AddUserToTeafinderWishlist < ActiveRecord::Migration
  def change
    add_reference :teafinder_wishlists, :user, index: true
  end
end
