class Teafinder::TeaStyle < ActiveRecord::Base
	validates :style, presence: true
	validates :user_id, presence: true
end
