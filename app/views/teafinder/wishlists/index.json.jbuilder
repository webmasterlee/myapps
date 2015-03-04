json.array!(@teafinder_wishlists) do |teafinder_wishlist|
  json.extract! teafinder_wishlist, :id, :name, :notes, :url
  json.url teafinder_wishlist_url(teafinder_wishlist, format: :json)
end
