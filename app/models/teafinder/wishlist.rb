class Teafinder::Wishlist < ActiveRecord::Base
	validates :name, presence: true
	validates :user_id, presence: true
end
