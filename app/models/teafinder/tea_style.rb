class Teafinder::TeaStyle < ActiveRecord::Base
	validates :style, presence: true
end
