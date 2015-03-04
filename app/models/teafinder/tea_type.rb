class Teafinder::TeaType < ActiveRecord::Base
	validates :type_name, presence: true
end
