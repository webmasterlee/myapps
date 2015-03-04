class Teafinder::Wishlist < ActiveRecord::Base
	validates :name, presence: true
end
