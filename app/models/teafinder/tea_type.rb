class Teafinder::TeaType < ActiveRecord::Base
	validates :type_name, presence: true
	validates :user_id, presence: true
end
